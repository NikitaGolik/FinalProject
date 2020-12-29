package by.golik.finalproject.controller;

/**
 * @author Nikita Golik
 */
public enum CommandList {
    LOGIN, REGISTER, LOG_OUT,
    LATEST_MOVIES, ALL_MOVIES, MOVIE_BY_ID, FIND_MOVIE_BY_TITLE, SHOW_MOVIES_BY_GENRE,
    ADD_MOVIE, UPDATE_MOVIE,
   ADD_GENRE_FOR_MOVIE, DELETE_GENRE_FOR_MOVIE,
    BAN_USER, UNBAN_USER, MOVIES_BY_GENRE,
    ADD_RATING,
    VIEW_ALL_USERS, VIEW_USER, VIEW_ALL_BANNED_USERS,
    CHANGE_LANGUAGE,
    VIEW_ALL_PARTICIPANTS,VIEW_PARTICIPANT, ADD_PARTICIPANT, UPDATE_PARTICIPANT, ADD_PARTICIPANT_FOR_MOVIE, DELETE_PARTICIPANT_FOR_MOVIE,
    UPLOAD_PHOTO,
}
