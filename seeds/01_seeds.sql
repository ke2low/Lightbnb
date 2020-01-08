INSERT INTO users (id, name, email, password)
VALUES (1, 'Eva Stanley', 'EvaS@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(2, 'Paul Stanley', 'Paul@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
(3, 'Will Stanley', 'Wills@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (id, owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, county, street,  city, province, post_code, active)
VALUES (1, 1, 'Rocky', 'description', 'url', 'url', 50, 5, 5, 5, 'Kentucky', 'Bear', 'Bear City', 'Kentucky State', '13931', true),
(2, 2, 'Rocky New', 'description', 'url', 'url', 50, 5, 5, 5, 'Kentucky', 'Bear', 'Bear City', 'Kentucky State', '13932', true),
(3, 3, 'Rocky Extreme', 'description', 'url', 'url', 50, 5, 5, 5, 'Kentucky', 'Bear', 'Bear City', 'Kentucky State', '13933', true);

INSERT INTO reservations (id, guest_id, property_id, start_date, end_date) 
VALUES (1, 1, 1, '2018-09-11', '2018-09-26'),
(2, 2, 2, '2019-01-04', '2019-02-01'),
(3, 3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews(id, guest_id, property_id, reservation_id, rating, message) 
VALUES (1, 1, 1, 1, 10, 'messages'),
(2, 2,2,2,9, 'messages'),
(3, 3,3,3,8, 'messages');