package by.golik.finalproject.dao.mysql;

import by.golik.finalproject.dao.GenreDAO;
import by.golik.finalproject.dao.exception.ConnectionPoolException;
import by.golik.finalproject.dao.exception.DAOException;
import by.golik.finalproject.dao.pool.ConnectionPool;
import by.golik.finalproject.dao.pool.ConnectionPoolHelper;
import by.golik.finalproject.entity.Genre;
import by.golik.finalproject.entity.Participant;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Nikita Golik
 */
public class GenreDaoImpl implements GenreDAO {
    private final static String SHOW_GENRES_BY_ID =
            "SELECT genres_id FROM movies_genres\n" +
                    " WHERE movies_id = ?";

    private static final String ADD_GENRE_FOR_MOVIE =
            "INSERT INTO movies_genres(movies_id, movies_genres.genres_id) VALUES (?, ?)";

    private static final String DELETE_GENRE =
            "DELETE FROM `movies_genres` WHERE movies_id = ?  AND `genres_id` = ?";

    private static final String ALL_GENRES =
            "SELECT * FROM genres;";

    private static final String ID = "id";
    private static final String GENRES_ID = "genres_id";
    private static final String NAME = "name";

    private static final GenreDAO instance = new GenreDaoImpl();

    private GenreDaoImpl() {

    }

    public static GenreDAO getInstance() {
        return instance;
    }

    /**
     * This method is used to get genres for a particular movie from data source.
     *
     * @param id of movie
     * @return filled Genre beans
     * @throws DAOException if some error occurred while processing data.
     */
    @Override
    public List<Genre> readGenresByMovie(int id) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(SHOW_GENRES_BY_ID);
            st.setInt(1, id);
            rs = st.executeQuery();

            List<Genre> genreList = new ArrayList<>();
            Genre genre = null;
            while (rs.next()) {
                genre = new Genre();
                genre.setId(rs.getInt(GENRES_ID));
                genreList.add(genre);
            }
            return genreList;

        } catch (SQLException e) {
            throw new DAOException("Genre sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Genre pool connection error");
        } finally {
            ConnectionPoolHelper.closeResource(con, st, rs);
        }
    }

    /**
     * This method is used to get all genres that are user in system
     * @return list of genres
     * @throws DAOException if some error occurred while processing data.
     * @throws SQLException if some error occurred while getting information from database.
     */
    @Override
    public List<Genre> readAllGenres() throws DAOException, SQLException {
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();

            st = con.prepareStatement(ALL_GENRES);

            rs = st.executeQuery();

            List<Genre> genres = new ArrayList<>();
            Genre genre;
            while (rs.next()) {
                genre = new Genre();
                genre.setId(rs.getInt(ID));
                genre.setName(rs.getString(NAME));
                genres.add(genre);
            }
            return genres;

        } catch (SQLException e) {
            throw new DAOException("Participant sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Participant pool connection error");
        } finally {
            ConnectionPoolHelper.closeResource(con, st, rs);
        }
    }

    /**
     * This method is used to add connection between some movie and genre into data source.
     *
     * @param intMovieId id of movie
     * @param intGenreID genre name id
     * @throws DAOException if some error occurred while processing data.
     */
    @Override
    public void createGenreForMovie(int intMovieId, int intGenreID) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();
            st = con.prepareStatement(ADD_GENRE_FOR_MOVIE);
            st.setInt(1, intMovieId);
            st.setInt(2, intGenreID);
            int update = st.executeUpdate();
            if (update > 0) {
                return;
            }
            throw new DAOException("Wrong review data");
        } catch (SQLException e) {
            throw new DAOException("Review sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Review pool connection error");
        }
        finally {
            ConnectionPoolHelper.closeResource(con, st);
        }
    }

    /**
     * This method is used to remove connection between some movie and genre from data source.
     *
     * @param intMovieID movie id
     * @throws DAOException if some error occurred while processing data.
     */
    @Override
    public void deleteGenreForMovie(int intMovieID, int intGenreID) throws DAOException {
        Connection con = null;
        PreparedStatement st = null;
        try {
            con = ConnectionPool.getInstance().takeConnection();
            st = con.prepareStatement(DELETE_GENRE);
            st.setInt(1, intMovieID);
            st.setInt(2, intGenreID);
            int update = st.executeUpdate();
            if (update > 0) {
                return;
            }
            throw new DAOException("Wrong review data");
        } catch (SQLException e) {
            throw new DAOException("Movie sql error", e);
        } catch (ConnectionPoolException e) {
            throw new DAOException("Movie pool connection error");
        }
        finally {
            ConnectionPoolHelper.closeResource(con, st);
        }
    }

}
