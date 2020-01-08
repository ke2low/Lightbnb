-- SELECT properties.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating) 
-- FROM reservations
-- JOIN properties ON properties.id = reservations.property_id
-- JOIN property_reviews ON property_reviews.reservation_id = reservations.id
-- WHERE reservations.guest_id = 1 AND reservations.end_date < now()::date
-- GROUP BY properties.id, reservations.id
-- ORDER BY reservations.start_date ASC
-- LIMIT 10;

SELECT properties.id, properties.title, reservations.id, reservations.start_date, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;