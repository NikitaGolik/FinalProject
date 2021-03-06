package by.golik.finalproject.service.impl;

import by.golik.finalproject.dao.DaoFactory;
import by.golik.finalproject.dao.UserDAO;
import by.golik.finalproject.dao.exception.DAOException;
import by.golik.finalproject.entity.User;
import by.golik.finalproject.service.Encryption;
import by.golik.finalproject.service.UserService;
import by.golik.finalproject.service.Validator;
import by.golik.finalproject.service.exception.ServiceAuthorizationException;
import by.golik.finalproject.service.exception.ServiceException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


/**
 * @author Nikita Golik
 */
public class UserServiceImpl implements UserService {
    private static final Logger logger = LogManager.getLogger();

    /**
     * This method is used to show any user by the username.
     * @param userName - nickname of user
     * @return User bean with filled in fields.
     * @throws ServiceException if any error occurred while processing method.
     * @throws ServiceAuthorizationException if any error occurred while processing method.
     */
    @Override
    public User getUserByUserName(String userName) throws ServiceException, ServiceAuthorizationException {
        if (!Validator.validate(userName)) {
            throw new ServiceAuthorizationException("Wrong username!");
        }
        DaoFactory daoFactory = DaoFactory.getInstance();
        UserDAO dao = daoFactory.getUserDAO();
        User user;
        try {
            user = dao.getUserByUsername(userName);
            logger.info(user.toString());
        } catch (DAOException e) {
            throw new ServiceException("Error in source!", e);
        }
        return user;
    }

    /**
     * This method is used to register and give access to the system for
     * some new visitor.
     * @param login of user
     * @param password of user
     * @param passwordrep repeat password of user
     * @param email of user
     * @return User bean
     * @throws Exception if any error occurred while processing method.
     */
    @Override
    public User register(String login, byte[] password, byte[] passwordrep, String email) throws Exception {
        if (!Validator.validate(login, email) ||
                !Validator.validateLogin(login) ||
                !Validator.validatePassword(password, passwordrep) ||
                !Validator.validateEmail(email)) {
            throw new ServiceAuthorizationException("Check input parameters");
        }
        String pass =  new String(password);
        String encodedPassword = Encryption.encrypt(pass);
        DaoFactory daoFactory = DaoFactory.getInstance();
        UserDAO dao = daoFactory.getUserDAO();
        User user;
        try {
            user = dao.register(login, email, encodedPassword);

            if (user == null) {
                throw new ServiceAuthorizationException("Wrong login or password!");
            }

        } catch (DAOException e) {
            throw new ServiceException("Error in source!", e);
        }
        return user;
    }

    /**
     * This method is used to let user enter his account in the system.
     * @param login of user
     * @param password of user
     * @return USer bean
     * @throws Exception if any error occurred while processing method.
     */
    @Override
    public User authorise(String login, byte[] password) throws Exception {
        logger.debug("authorise begin");
        if (!Validator.validateLogin(login) ||
                !Validator.validatePassword(password)) {
            throw new ServiceAuthorizationException("Wrong parameters!");
        }
        String pass =  new String(password);
        String encodedPassword = Encryption.encrypt(pass);
        DaoFactory daoFactory = DaoFactory.getInstance();
        UserDAO dao = daoFactory.getUserDAO();
        User user;

        try {
            user = dao.getUserByUsername(login);
            if (user == null || !Encryption.isMatch(pass , user.getPassword())) {
                throw new ServiceAuthorizationException("Wrong login or password!");
            }
        } catch (DAOException e) {
            throw new ServiceException("Error in source", e);
        }

        logger.info(user.toString());
        return user;

    }
}
