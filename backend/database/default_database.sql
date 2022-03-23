DROP DATABASE IF EXISTS classifier; 

CREATE DATABASE classifier;  

USE classifier; 

CREATE TABLE states(
    id INT NOT NULL AUTO_INCREMENT, 
    class_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    class VARCHAR(255), 
    PRIMARY KEY(id) 
); 

INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'idle');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'left-right');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'anticlockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'clockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'anticlockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'up-down');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'clockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'left-right');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'idle');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'up-down');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'anticlockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'clockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'idle');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'up-down');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'left-right');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'idle');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'anticlockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'clockwise');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'up-down');
INSERT INTO `states` (`id`, `class_time`, `class`) VALUES (NULL, current_timestamp(), 'left-right');