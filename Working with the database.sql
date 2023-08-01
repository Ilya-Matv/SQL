SELECT
    EXTRACT(WEEK FROM flights.arrival_time) as week_number,
    COUNT(ticket_flights.flight_id) as ticket_amount,
    festival_week,
    festival_name
FROM
    flights 
    inner join airports on airports.airport_code = flights.arrival_airport
    inner join ticket_flights USING (flight_id)
    LEFT join (SELECT
              festival_name,
              EXTRACT(WEEK from festival_date) as festival_week
              FROM festivals
              WHERE CAST(festival_date  AS date) BETWEEN '2018-07-23' AND '2018-09-30'
              and festival_city = 'Москва') as SQBD ON festival_week = EXTRACT(WEEK FROM flights.arrival_time)
    where
      CAST(flights.arrival_time  AS date) BETWEEN '2018-07-23' AND '2018-09-30'
     and airports.city  = 'Москва'
     
GROUP BY
week_number, festival_week, festival_name
ORDER BY week_number;