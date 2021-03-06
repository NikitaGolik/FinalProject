package by.golik.finalproject.dao;

import by.golik.finalproject.dao.exception.DAOException;
import by.golik.finalproject.entity.Participant;

import java.sql.SQLException;
import java.util.List;

/**
 * @author Nikita Golik
 */
public interface ParticipantDAO {

    /**
     * This method is used to retrieve participant by id from data source.
     *
     * @param id id of participant
     * @return filled Participant bean
     * @throws DAOException if some error occurred while processing data.
     */
    Participant readParticipant(int id) throws DAOException;

    /**
     * This method is used to insert data about new participant into data source.
     *
     * @param name name of participant in
     * @param surname surname of participant
     * @param secondName second name of participant
     * @throws DAOException if some error occurred while processing data.
     */
    void createParticipant(String name, String surname, String secondName, String position) throws DAOException;

    /**
     * This method is used to update data about any participant in data source.
     *
     * @param id participant id
     * @param name  name of participant
     * @param surName  name of participant
     * @param secondName  second name of participant
     * @throws DAOException if some error occurred while processing data.
     */
    void updateParticipant(int id, String name, String surName, String secondName, String position) throws DAOException;

    /**
     * This method is used to connect participant with movie.
     *
     * @param participantId - unique identifier of participant
     * @param movieId - unique identifier of movie
     * @throws DAOException if some error occurred while processing data.
     */
    void addParticipantForMovie(int participantId, int movieId) throws DAOException;

    /**
     * This method is used to delete connection between some Movie and Participant from data source.
     *
     * @param participantId id of participant
     * @param movieId id of movie
     * @throws DAOException if some error occurred while processing data.
     */
    void deleteParticipantForMovie(int participantId, int movieId) throws DAOException;

    /**
     * This method is used to get list of all participants from data source.
     *
     * @return list of filled Participant beans
     * @throws DAOException if some error occurred while processing data.
     */
    List<Participant> getAllParticipants() throws DAOException, SQLException;

    /**
     * This method is used to get list of all participants from data source.
     *
     * @param offset - offset of page
     * @param noOfRecords - maximum count of records on one page
     * @return list of filled Participant beans
     * @throws DAOException if some error occurred while processing data.
     */
    List<Participant> getAllParticipants(int offset, int noOfRecords) throws SQLException, DAOException;

    /**
     * This method is used to get count of all participants of movies
     * @return - count of participants
     * @throws DAOException if some error occurred while processing data.
     */
    int countAllParticipantsAmount() throws DAOException;

    /**
     * This method is used to retrieve the most recently added participant from data source.
     *
     * @return filled Participant bean
     * @throws DAOException if some error occurred while processing data.
     */
    Participant getLastInsertedParticipant() throws DAOException;

    /**
     * This method is used to delete participant from data source, used only for tests.
     *
     * @param id of participant
     * @throws DAOException if some error occurred while processing data.
     */
    void deleteParticipant(int id) throws DAOException;

}
