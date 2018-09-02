use itpmiehl;

CREATE TABLE menu_entries (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
url VARCHAR(30) NOT NULL,
page_id INT(6) UNSIGNED
);

CREATE TABLE pages (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
parent_id INT(6) UNSIGNED
);

CREATE TABLE page_content (
    content MEDIUMTEXT,
    page_id INT(6) UNSIGNED,
    FOREIGN KEY (page_id) REFERENCES pages(id)
);

INSERT INTO menu_entries (url, name)VALUES ('/', 'Home');
INSERT INTO menu_entries (url, name)VALUES ('/apex', 'Apex');
INSERT INTO menu_entries (url, name)VALUES ('/lc-framework', 'LC-Framework');
INSERT INTO menu_entries (url, name)VALUES ('/certifications', 'Zertifizierungen');
INSERT INTO menu_entries (url, name)VALUES ('/einsatz-der-technologien', 'Einsatz der Technologien');

INSERT INTO pages (name) VALUES ('Salesforce');

INSERT INTO pages (name) VALUES ('Apex');
INSERT INTO pages (name, parent_id) VALUES ('Was ist Apex?', 2);
INSERT INTO pages (name, parent_id) VALUES ('Grundkonzepte', 2);
INSERT INTO pages (name, parent_id) VALUES ('Schleifen', 6);
INSERT INTO pages (name, parent_id) VALUES ('Collections', 6);
INSERT INTO pages (name, parent_id) VALUES ('Statements', 6);

INSERT INTO pages (name) VALUES ('Lightning Component Framework');
INSERT INTO pages (name, parent_id) VALUES ('Was ist das LC Framework', 4);

INSERT INTO pages (name) VALUES ('Einsatz der Technologien');

