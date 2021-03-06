USE `movies_db`;

CREATE SCHEMA IF NOT EXISTS `movies_db` DEFAULT CHARACTER SET utf8 ;
USE `movies_db` ;

-- -----------------------------------------------------
-- Table `movies_db`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `title` varchar(100) NOT NULL,
                          `year` int NOT NULL,
                          `runtime` int NOT NULL,
                          `budget` int NOT NULL,
                          `gross` int NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `movies_db`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`genres` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `name` varchar(45) NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


-- -----------------------------------------------------
-- Table `movies_db`.`movies_genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_genres` (
                                 `movies_id` int NOT NULL,
                                 `genres_id` int NOT NULL,
                                 PRIMARY KEY (`movies_id`,`genres_id`),
                                 KEY `fk_movies_has_genres_genres1_idx` (`genres_id`),
                                 CONSTRAINT `fk_movies_has_genres_genres1` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                                 CONSTRAINT `fk_movies_has_genres_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- -----------------------------------------------------
-- Table `movies_db`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `login` varchar(45) NOT NULL,
                         `password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `email` varchar(32) NOT NULL,
                         `role` varchar(5) NOT NULL,
                         `registrationdate` date NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `movies_db`.`participants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`participants` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `name` varchar(45) NOT NULL,
                                `surname` varchar(45) NOT NULL,
                                `secondname` varchar(45) NOT NULL,
                                `position` varchar(10) NOT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `movies_db`.`movies_participants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_participants` (
                                       `movies_id` int NOT NULL,
                                       `participants_id` int NOT NULL,
                                       PRIMARY KEY (`movies_id`,`participants_id`),
                                       KEY `fk_movies_has_actors_or_directors_actors_or_directors1_idx` (`participants_id`),
                                       KEY `fk_movies_has_actors_or_directors_movies1_idx` (`movies_id`),
                                       CONSTRAINT `fk_movies_has_actors_or_directors_actors_or_directors1` FOREIGN KEY (`participants_id`) REFERENCES `participants` (`id`),
                                       CONSTRAINT `fk_movies_has_actors_or_directors_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `movies_db`.`movies_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movies_db`.`movies_users` (
                                `users_id` int NOT NULL,
                                `date` date NOT NULL,
                                `movies_id` int NOT NULL,
                                PRIMARY KEY (`users_id`),
                                KEY `fk_movies_has_users_users1_idx` (`users_id`),
                                KEY `fk_movies_users_movies1_idx` (`movies_id`),
                                CONSTRAINT `fk_movies_has_users_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
                                CONSTRAINT `fk_movies_users_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `movies_db`.`vote`
-- -----------------------------------------------------
CREATE TABLE `votes` (
                         `score` int NOT NULL,
                         `date` date NOT NULL,
                         `users_id` int NOT NULL,
                         `movies_id` int NOT NULL,
                         PRIMARY KEY (`users_id`,`movies_id`),
                         KEY `fk_votes_movies1_idx` (`movies_id`),
                         KEY `fk_votes_users1_idx` (`users_id`),
                         CONSTRAINT `fk_votes_movies1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                         CONSTRAINT `fk_votes_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
