package by.golik.finalproject.dao.mysql;

import by.golik.finalproject.dao.UserDAO;
import by.golik.finalproject.dao.exception.ConnectionPoolException;
import by.golik.finalproject.dao.exception.DAOException;
import by.golik.finalproject.dao.pool.ConnectionPool;
import by.golik.finalproject.entity.Role;
import by.golik.finalproject.entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Nikita Golik
 */
public class UserDaoImpl implements UserDAO {

    private static final String USER_NAME = "login";
    private static final String USER_EMAIL = "email";
    private static final String USER_ROLE = "role";
    private static final String USER_REGISTER = "registrationdate";
    private static final String DATE_FORMAT = "yyyy-MM-dd";

    private final static String LOG_IN_STATEMENT =
            "SELECT * FROM users WHERE login=? and password=?";
    private final static String REGISTER_STATEMENT =
            "INSERT INTO users ('login', 'email', `password`, `role`, `registrationdate`) " +
                    "VALUES(?,?,?,'user',?)";
    private final static String VIEW_ALL_USERS =
            "SELECT * FROM users";
    private static final String VIEW_BY_NICKNAME =
            "SELECT * FROM users WHERE login=?";
    private static final String DELETE_BY_NICKNAME =
            "DELETE FROM `movies_db`.`users` WHERE login=?;";

    private static final UserDAO instance = new UserDaoImpl();
    private UserDaoImpl(){

    }

    public static UserDAO getInstance() {
        return instance;
    }


    @Override
    public User authorise(String login, String password) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(LOG_IN_STATEMENT);

            st.setString(1, login);
            st.setString(2, password);

            rs = st.executeQuery();

            if (!rs.next()) {
                return null;
            }

            User user = new User();
            user.setUserName(rs.getString(USER_NAME));
            user.setEmail(rs.getString(USER_EMAIL));
            user.setRole(Role.getByIdentity(rs.getInt(USER_ROLE)));
            user.setRegistrationDate(rs.getDate(USER_REGISTER));
            return user;

        } catch (SQLException e) {
            throw new DAOException("Login sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Login pool connection error");
        }
    }

    @Override
    public User register(String email, String login, String password) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(REGISTER_STATEMENT);
            st.setString(1, login);
            st.setString(2, email);
            st.setString(3, password);
            java.util.Date dt = new java.util.Date();
            java.text.SimpleDateFormat sdf =
                    new java.text.SimpleDateFormat(DATE_FORMAT);
            String currentTime = sdf.format(dt);
            st.setDate(4, Date.valueOf(currentTime));
            int i = st.executeUpdate();

            if (i > 0) {
                return authorise(login, password);
            }

        } catch (SQLException e) {
            throw new DAOException("Register sql error", e);
        } catch (DAOException | ConnectionPoolException e) {
            throw new DAOException("Login pool connection error");
        }
        return null;
    }

    @Override
    public List<User> getAllUsers() throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(VIEW_ALL_USERS);

            rs = st.executeQuery();

            List<User> users = new ArrayList<>();
            User user;
            while (rs.next()) {
                user = new User();
                user.setUserName(rs.getString(USER_NAME));
                user.setEmail(rs.getString(USER_EMAIL));
                user.setRole(Role.getByIdentity(rs.getInt(USER_ROLE)));
                user.setRegistrationDate(rs.getDate(USER_REGISTER));
                users.add(user);
            }
            return users;

        } catch (SQLException e) {
            throw new DAOException("User sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Movie pool connection error");
        }
    }

    @Override
    public User getUserByUsername(String userName) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(VIEW_BY_NICKNAME);
            st.setString(1, userName);
            rs = st.executeQuery();

            User user = null;
            if (rs.next()) {
                user = new User();
                user.setUserName(rs.getString(USER_NAME));
                user.setEmail(rs.getString(USER_EMAIL));
                user.setRole(Role.getByIdentity(rs.getInt(USER_ROLE)));
                user.setRegistrationDate(rs.getDate(USER_REGISTER));
            }
            return user;

        } catch (SQLException e) {
            throw new DAOException("User sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("User pool connection error");
        }
    }

    @Override
    public void banUser(String userName) {

    }

    @Override
    public void unBanUser(String userName) {

    }

    @Override
    public void deleteUser(String userName) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();
            st = con.prepareStatement(DELETE_BY_NICKNAME);
            st.setString(1, userName);
            int update = st.executeUpdate();
            if (update > 0) {
                //System.out.println("User udalen vse ok " + userNickname);
                return;
            }
            throw new DAOException("Wrong movie data");
        } catch (SQLException e) {
            throw new DAOException("Movie sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Movie pool connection error");
        }
    }

}
