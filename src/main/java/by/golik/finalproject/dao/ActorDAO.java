package by.golik.finalproject.dao;

import by.golik.finalproject.entity.Star;

import java.util.List;

/**
 * @author Nikita Golik
 */
public interface ActorDAO {
    List<Star> getActorsForMovie(int actorId);
    Star getProducerForMovie(int producerId);
    Star getActor(int actorId);
    void addActor(String name, String surname);
    void updateActor(String name, String surname);
    void deleteActor(int actorId);
    void addActorForMovie(int actorId, int movieId);
    void deleteActorForMovie(int actorId, int movieId);
    void addProducerForMovie(int producerId, int movieId);
    void deleteProducerForMovie(int producerId, int movieId);
    List<Star> getAllActors();
    void updateImage(int id, String path);

}
