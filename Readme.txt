Task: for each week from July 23 to September 30, 2018, count the tickets that were bought for flights to Moscow (week number week_number and number of ticket_amount tickets). Get a table:
with the number of tickets purchased per week;
whether the festival was held that week;
festival name festival_name;
week number week_number.
Output columns in this order:
- week_number
- ticket_amount
- festival_week
- festival_name

Data Description
At your disposal is a database of air transportation.
Airports table - information about airports:
airport_code - three-letter airport code
airport_name - airport name
city ​​- city
timezone - time zone
The aircrafts table - information about the aircraft:
aircraft_code — aircraft model code
model — aircraft model
range - flight range
Tickets table - information about tickets:
ticket_no — unique ticket number
passenger_id — personal identifier of the passenger
passenger_name - passenger's first and last name
Flights table - information about flights:
flight_id — unique flight identifier
departure_airport — departure airport
departure_time — departure date and time
arrival_airport — arrival airport
arrival_time — date and time of arrival
aircraft_code — aircraft id
ticket_flights table - "flight-ticket" junction table
ticket_no — ticket number
flight_id — flight ID
festivals table - information about festivals
festival_id — unique number of the festival
festival_date — festival date
festival_city — festival city
festival_name - festival name