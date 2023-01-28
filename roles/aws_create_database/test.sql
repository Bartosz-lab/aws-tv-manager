INSERT into LOCATIONS(address)
VALUES
    ('building1'),
    ('building2'),
    ('building3');

INSERT into EMPLOYEES(name, surname, role)
VALUES
    ('John', 'Smith', 'admin'),
    ('Chad', 'Giga', 'support'),
    ('Mary', 'Land', 'hr');

INSERT into TVS(ip_addr, supervisor_id, location_id, available, last_seen)
VALUES
    ('10.0.0.21', 1, 1, true, CURRENT_DATE),
    ('10.2.0.37', 1, 2, false, NULL),
    ('10.3.0.42', 2, 3, false, TO_DATE('26-01-2023', 'DD-MM-YYYY'));