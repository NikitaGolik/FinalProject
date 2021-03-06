package by.golik.finalproject.dao.pool;

import by.golik.finalproject.dao.exception.ConnectionPoolException;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * This class is used to close resources.
 * @author Nikita Golik
 */
public class ConnectionPoolHelper {
    private static final Logger logger = LogManager.getLogger(ConnectionPoolHelper.class);
    private static final ConnectionPool CONNECTION_POOL = ConnectionPool.getInstance();

    /**
     * This method is used to close opened resources such as PreparedStatement, ResultSet and
     * return Connection.
     * @param con Connection
     * @param st PreparedStatement
     * @param rs ResultSet
     */
    public static void closeResource(Connection con, PreparedStatement st, ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                logger.log(Level.ERROR, e + "Exception while closing result set");
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                logger.log(Level.ERROR, e + "Exception while closing statement");
            }
        }
        try {
            CONNECTION_POOL.returnConnection(con);
        } catch (ConnectionPoolException e) {
            logger.log(Level.ERROR, e + "Exception while returning connection");
        }
    }

    /**
     * This method is used to close opened resource PreparedStatement and
     * return Connection.
     * @param con Connection
     * @param st PreparedStatement
     */
    public static void closeResource(Connection con, PreparedStatement st) {
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
                logger.log(Level.ERROR, e + "Exception while closing statement");
            }
        }
        try {
            CONNECTION_POOL.returnConnection(con);
        } catch (ConnectionPoolException e) {
            logger.log(Level.ERROR, e + "Exception while returning connection");
        }
    }
}
