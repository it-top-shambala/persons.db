-- Add persons
INSERT INTO tab_persons (first_name, last_name, date_of_birth)
VALUES ('Andrey', 'Starinin', '18.02.1986');
INSERT INTO tab_persons (first_name, last_name, date_of_birth)
VALUES ('Anonim', 'Anonimus', '01.01.0001');

-- Add types
INSERT INTO tab_contacts_types (type) VALUES ('phone');
INSERT INTO tab_contacts_types (type) VALUES ('email');
INSERT INTO tab_contacts_types (type) VALUES ('address');

-- Add contacts
INSERT INTO tab_contacts (person_id, contact_type_id, contact)
VALUES (1, 1, '+79042144491');
INSERT INTO tab_contacts (person_id, contact_type_id, contact)
VALUES (1, 1, '257-57-55');
INSERT INTO tab_contacts (person_id, contact_type_id, contact)
VALUES (1, 2, 'starinin-andrey@ya.ru');
INSERT INTO tab_contacts (person_id, contact_type_id, contact)
VALUES (2, 3, 'not address');