INSERT INTO `youtube`.`user` (`id`, `email`, `password`, `username`, 
`signup_date_time`, `birth_date`, `genre`, `country`, `postal_code`) 
VALUES (1, 'p@p.com', 'fre34', 'pure', '2023-01-01 00:00:00', '1753-01-01', 'm', 'Yus', '45343');

INSERT INTO `youtube`.`channel` (`id`, `channel_name`, `channel_description`, 
`channel_creation_date_time`, `created_by`) 
VALUES (1, 'Huis', 'Blue', '2023-01-01 00:00:00', 1);

INSERT INTO `youtube`.`channel_has_subscribed_user` (`channel_id`, 
`user_id`) 
VALUES (1, 1);

INSERT INTO `youtube`.`content_status_details` (`id`, `status_name`) 
VALUES (1, 'public');

INSERT INTO `youtube`.`videos` (`id`, `title`, `published_by`, 
`description`, `upload_date_time`, `size`, `duration`, `thumbnail`, 
`plays_count`, `likes_count`, `dislikes_count`, `video_status_id`, 
`video_file_name`) 
VALUES (1,'Jus', 1,'Kos', '2023-01-01 00:00:00', 5000, 50000, 'pos.png', 56000, 
58000, 56, 1, 'video.mpg');

INSERT INTO `youtube`.`user_playlist` (`id`, `user_playlist_name`, 
`user_playlist_creation-date_time`, 
`user_playlist_status_id`, `user_id`) 
VALUES (1, 'Plot', '2023-01-01 00:00:00', 1, 1);