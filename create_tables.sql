CREATE TABLE tab_persons
(
    person_id     INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    first_name    TEXT    NOT NULL,
    last_name     TEXT    NOT NULL,
    date_of_birth TEXT    NOT NULL
);

CREATE TABLE tab_contacts_types
(
    contact_type_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    type            TEXT    NOT NULL
);

CREATE TABLE tab_contacts
(
    contact_id      INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    person_id       INTEGER NOT NULL,
    contact_type_id INTEGER NOT NULL,
    contact         TEXT    NOT NULL,
    FOREIGN KEY (person_id) REFERENCES tab_persons (person_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    FOREIGN KEY (contact_type_id) REFERENCES tab_contacts_types (contact_type_id)
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);