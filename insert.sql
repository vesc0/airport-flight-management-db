-- AIRPORT
INSERT INTO AIRPORT (AIRPORT_ID, NAME, CODE, COUNTRY) VALUES
(1, 'John F. Kennedy International Airport', 'JFK', 'USA'),
(2, 'Heathrow Airport', 'LHR', 'UK'),
(3, 'Changi Airport', 'SIN', 'Singapore');

-- TERMINAL
INSERT INTO TERMINAL (TERMINAL_ID, NAME, AIRPORT_ID) VALUES
(1, 'Terminal 1', 1),
(2, 'Terminal 2', 1),
(3, 'Terminal A', 2),
(4, 'Terminal B', 3);

-- GATE
INSERT INTO GATE (GATE_ID, GATE_NUMBER, TERMINAL_ID) VALUES
(1, 'A1', 1),
(2, 'A2', 1),
(3, 'B1', 2),
(4, 'C1', 3),
(5, 'D1', 4);

-- AIRCRAFT
INSERT INTO AIRCRAFT (AIRCRAFT_ID, MODEL, CAPACITY, REGISTRATION_NO, MANUFACTURER, YEAR_BUILT) VALUES
(1, 'Boeing 737', 160, 'N12345', 'Boeing', 2015),
(2, 'Airbus A320', 180, 'N54321', 'Airbus', 2017),
(3, 'Cessna 172', 4, 'C17201', 'Cessna', 2000);

-- PILOT
INSERT INTO PILOT (PILOT_ID, RANK) VALUES
(1, 'Captain'),
(2, 'First Officer'),
(3, 'Captain');

-- ATTENDANT
INSERT INTO ATTENDANT (ATTENDANT_ID) VALUES
(1),
(2),
(3);

-- CREW
INSERT INTO CREW (CREW_ID, FULL_NAME, LICENSE_NO, PILOT_ID, ATTENDANT_ID, MANAGER_ID) VALUES
(1, 'John Doe', 'PIL123', 1, NULL, NULL),
(2, 'Jane Smith', 'ATT456', NULL, 1, NULL),
(3, 'Mark Johnson', 'PIL789', 2, NULL, 1),
(4, 'Emily Davis', 'ATT101', NULL, 2, 2),
(5, 'Alice Brown', 'PIL202', 3, NULL, NULL);

-- PASSENGER
INSERT INTO PASSENGER (PASSENGER_ID, FULL_NAME, PASSPORT_NO, EMAIL, PHONE) VALUES
(1, 'Michael Green', 'X1234567', 'michael@example.com', '+123456789'),
(2, 'Laura White', 'Y7654321', 'laura@example.com', '+987654321'),
(3, 'Tom Black', 'Z1357924', 'tom@example.com', '+192837465');

-- FLIGHT
INSERT INTO FLIGHT (FLIGHT_ID, FLIGHT_NO, DEPARTURE_TIME, ARRIVAL_TIME, FROM_AIRPORT_ID, TO_AIRPORT_ID, AIRCRAFT_ID, GATE_ID, STATUS, FLIGHT_TYPE, AIRLINE, OWNER_NAME, CARGO_COMPANY, CARGO_WEIGHT) VALUES
(1, 'AA101', TO_DATE('2025-06-01 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-01 12:00', 'YYYY-MM-DD HH24:MI'), 1, 2, 1, 1, 'boarding', 'CommercialFlight', 'American Airlines', NULL, NULL, NULL),
(2, 'BA202', TO_DATE('2025-06-02 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-02 18:00', 'YYYY-MM-DD HH24:MI'), 2, 3, 2, 4, 'departed', 'CommercialFlight', 'British Airways', NULL, NULL, NULL),
(3, 'CF303', TO_DATE('2025-06-03 09:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-03 15:00', 'YYYY-MM-DD HH24:MI'), 3, 1, 3, 5, 'delayed', 'CargoFlight', NULL, NULL, 'FedEx', 2300.50),
(4, 'PF404', TO_DATE('2025-06-04 11:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-04 13:00', 'YYYY-MM-DD HH24:MI'), 1, 3, 3, 2, 'landed', 'PrivateFlight', NULL, 'John Rich', NULL, NULL);

-- FLIGHT_CREW
INSERT INTO FLIGHT_CREW (FLIGHT_ID, CREW_ID) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5);

-- FLIGHT_LOG
INSERT INTO FLIGHT_LOG (FLIGHT_ID, ACTUAL_DEPARTURE_TIME, ACTUAL_ARRIVAL_TIME) VALUES
(1, TO_DATE('2025-06-01 08:05', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-01 12:10', 'YYYY-MM-DD HH24:MI')),
(2, TO_DATE('2025-06-02 14:10', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-06-02 18:05', 'YYYY-MM-DD HH24:MI'));

-- BOARDING_PASS
INSERT INTO BOARDING_PASS (BOARDING_PASS_ID, PASSENGER_ID, FLIGHT_ID, SEAT, CLASS, STATUS) VALUES
(1, 1, 1, '12A', 'Economy', 'checked-in'),
(2, 2, 1, '12B', 'Economy', 'boarded'),
(3, 3, 2, '14C', 'Business', 'cancelled');

-- BAGGAGE
INSERT INTO BAGGAGE (BAGGAGE_ID, BOARDING_PASS_ID, TAG_NUMBER, WEIGHT, STATUS, TYPE, DESCRIPTION) VALUES
(1, 1, 'TAG123', 23.5, 'checked-in', 'checked-in', 'Blue suitcase'),
(2, 2, 'TAG456', 18.0, 'loaded', 'carry-on', 'Backpack'),
(3, 3, 'TAG789', 30.0, 'missing', 'checked-in', 'Red duffel bag');
