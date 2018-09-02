use itpmiehl;

CREATE TABLE menu_entries (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
url VARCHAR(30) NOT NULL
);

CREATE TABLE pages (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
parent_id INT(6) UNSIGNED
);

INSERT INTO menu_entries (url, name)VALUES ('/', 'Home');
INSERT INTO menu_entries (url, name)VALUES ('/apex', 'Apex');
INSERT INTO menu_entries (url, name)VALUES ('/lc-framework', 'LC-Framework');
INSERT INTO menu_entries (url, name)VALUES ('/certifications', 'Zertifizierungen');
INSERT INTO menu_entries (url, name)VALUES ('/einsatz-der-technologien', 'Einsatz der Technologien');