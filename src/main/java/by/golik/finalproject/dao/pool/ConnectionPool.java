package by.golik.finalproject.dao.pool;

import by.golik.finalproject.dao.exception.ConnectionPoolException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/**
 * @author Nikita Golik
 */
public class ConnectionPool {
    private static final Logger logger = LogManager.getLogger(ConnectionPool.class);
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://127.0.0.1:3309/films?useEncoding=true&amp;characterEncoding=UTF-8";
    private static final String USER = "root";
    private static final String PASSWORD = "canada@123";

    private static final int MINIMAL_CONNECTION_COUNT = 5;

    private static BlockingQueue<Connection> freeConnections;
    private static BlockingQueue<Connection> usedConnections;

    private volatile boolean isInit = false;

    private static final ConnectionPool instance = new ConnectionPool();

    private ConnectionPool() {
    }

    public void init() throws ConnectionPoolException {
        if(!isInit) {
            try {
                freeConnections = new ArrayBlockingQueue<>(MINIMAL_CONNECTION_COUNT);
                usedConnections = new ArrayBlockingQueue<>(MINIMAL_CONNECTION_COUNT);
                Class.forName(DRIVER);
                Connection connection;
                for(int i = 0; i < MINIMAL_CONNECTION_COUNT; i++) {
                    connection = DriverManager.getConnection(URL, USER, PASSWORD);
                    freeConnections.add(connection);
                } isInit = true;
            } catch (ClassNotFoundException | SQLException e) {
                logger.catching(e);
            }
        } else {
            throw new ConnectionPoolException("You must init pool at once");
        }
    }

    public void destroy() throws ConnectionPoolException {
        if(isInit) {
            try {
                for(Connection connection : freeConnections) {
                    connection.close();
                }
                freeConnections.clear();
                for(Connection connection : usedConnections) {
                    connection.close();
                }
                usedConnections.clear();
                isInit = false;
            } catch (SQLException e) {
                throw new ConnectionPoolException("Can not destroy poll", e);
            }
        } else {
            throw new ConnectionPoolException("You can't destroy pool, that didn't init");
        }
    }
    public static ConnectionPool getInstance() {
        return instance;
    }
    public Connection takeConnection() throws ConnectionPoolException {
        Connection connection;
        try {
            if(freeConnections == null) {
                throw new ConnectionPoolException("Pol doesn't exist");
            }
            connection = freeConnections.take();
            usedConnections.put(connection);
            return connection;
        } catch (InterruptedException e) {
            throw new ConnectionPoolException("Couldn't take connection from pool", e);
        }
    }
    public void returnConnection(Connection connection) throws ConnectionPoolException {
        try {
            if(connection == null || connection.isClosed()) {
                throw new ConnectionPoolException("Can't return closed connection");
            }
        } catch (SQLException e) {
            throw new ConnectionPoolException("SQL exception in returnConnection");
        }
        try {
            usedConnections.remove(connection);
            freeConnections.put(connection);
        } catch (InterruptedException e) {
            throw  new ConnectionPoolException("Exception while return connections to queues", e);
        }
    }

}