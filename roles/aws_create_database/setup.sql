DROP TABLE IF EXISTS LOCATIONS;
CREATE TABLE LOCATIONS (
    id      SERIAL,
    address VARCHAR(300),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS EMPLOYEES;
CREATE TABLE EMPLOYEES (
    id      SERIAL,
    name    VARCHAR(80),
    surname VARCHAR(80),
    role    VARCHAR(30),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS TVS;
CREATE TABLE TVS (
    id              SERIAL,
    ip_addr         INET, --with port ig
    status          
    supervisor_id   INT NOT NULL,
    location_id     INT NOT NULL,
    available       BOOLEAN DEFAULT false,
    last_seen       DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (supervisor_id) REFERENCES EMPLOYEES(id) ON DELETE CASCADE,
    FOREIGN KEY (location_id) REFERENCES LOCATIONS(id) ON DELETE CASCADE
);