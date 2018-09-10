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

INSERT INTO page_content (page_id, content) VALUES(1, 'Salesforce ist eine Customer-Relationship Management Plattform, die sich dadurch auszeichnet, dass sie zu 100% in der Cloud läuft und für Unternehmen keine Serverkosten etc. anfallen. Salesforce selbst ist dadurch Sicherheit einer der größten Faktoren, wenn es um Fortschritt und Entwicklung geht. Es gibt verschiedene Plattformen die Firmen helfen ihren Verkauf anzutreiben, ihre Marketinginstrumente besser zu verwalten oder Kundenbetreuung zu perfektionieren. Es gibt verschiedene Modelle von Salesforce, um den Anforderungen des jeweiligen Unternehmens perfekt zu entsprechen. Die Aufgabe meines Teams ist es, die bestehenden Unternehmensprozesse in Salesforce abzubilden und, falls es möglich ist, die Unternehmensprozesse zu optimieren.');

INSERT INTO page_content (page_id, content ) VALUES(5, 'Apex ist eine Sprache der 3. Generation und streng typisiert, sowie objekt-orientiert. [1] Die Typisierung einer Sprache wird anhand der Möglichkeiten, wie viele implizite Konvertierungen von einem Datentyp in einen anderen möglich sein. [2] Zum Beispiel erlaubt PHP fast jeden Typ in einen anderen implizit zu casten, wobei dies bei Apex kaum möglich ist. Die Syntax von Apex ist sehr an die Syntax von Java angelegt.');

INSERT INTO page_content (page_id, content) VALUES(6, "<img src='./assets/images/grundkonzept.png' alt='Grundkonzepte' />");

INSERT INTO page_content (page_id, content) VALUES(9, 'In Apex gibt es folgende Arten von Schleifen: 1. Do-while 2. While 3. For Eine Do-While Schleife wird mindestens einmal ausgeführt und überprüft danach die Kondition. Damit eine While Schleife ausgeführt wird, muss die Kondition vor dem Start erfüllt sein. Eine For Schleife wird so lange ausgeführt, bis die Kondition falsch ist. Für alle Schleifen gilt: 1. break; - bricht die ganze Schleife ab 2. continue; - springt zum nächsten Iterationsschritt Für beide gilt grundsätzlich, dass diese nur dann verwendet werden sollten, wenn es keine andere Möglichkeit gibt, da die Verwendung dieser Keywords als schlechter Programmierstil gilt.');

INSERT INTO page_content (page_id, content) VALUES(10, 'In Apex gibt es folgende Collections: 1. Lists/Arrays 2. Maps 3. Sets Lists verwendet man dann, wenn die Reihenfolge der Elemente wichtig ist und ebenso doppelte Elemente keine Rolle spielen. Um eine Liste zu erstellen wird das List Keyword gefolgt von <> und darin den Datentyp der Elemente in der Liste. Da Apex streng typisiert ist, kann man nur Variablen mit dem hier festgelegten Datentyp zur Liste hinzufügen. List<datatype> exampleList = new List<datatype>(); Ein Set ist sozusagen das Gegenteil einer Liste. Es besteht aus einzigartigen unsortierten Elementen. Ähnlich wie bei einer Liste wird zuerst das Set Keyword gefolgt von <> und darin den Datentyp der Elemente des Sets geschrieben um ein Set zu definieren. Set<datatype> exampleSet = new Set<datatype>(); Eine Map ist eine Collection von Key-value Paaren, jeder key muss einzigartig in einer Map sein, aber jeder value darf öfters in einer Map vorkommen. Um eine Map zu erstellen wird das Keyword Map gefolgt von <> und darin nun der Datentyp des Keys und der Datentyp des Values mit einem Beistrich getrennt definiert. Map<datatypeKey, datatypeValue> exampleMap = new Map<datatypeKey,datatypeValue>();');
INSERT INTO page_content (page_id, content) VALUES(11, 'Statements sind sogenannte Instruktionen, die eine Aktion wie eine Variablendeklaration oder eine Schleife ausführen. In Apex gibt es folgende Arten von Statements: • Zuweisung/Deklaration • Bedingungen • Schleifen • DML(Data Manipulation Language (DML) • Transaction Control • Fehlerbehandlungen');
INSERT INTO page_content (page_id, content) VALUES(7,'Das Lightning Component Framework bietet Entwickler zahlreiche UI & Design Elemente bei der Entwicklung von Webapplikationen. Mit diesen Elementen wird es einem Entwickler ziemlich vereinfacht Webapplikationen mit guter Benutzerfreundlichkeit zu bauen. Weiters sind Lightning Komponenten von Haus aus responsive und als Entwickler muss man sich so nicht mehr viel auf das Design auf mobilen Endgeräten kümmern. Komponenten Aus mehreren Komponenten, können neue benutzerdefinierte wiederverwendbare Komponenten erstellt werden und dies fördert wiederum die Qualität des Codes und der „Don’t repeat yourself“-Philosophie. Welche aussagt, dass man sich als Entwickler nicht selbst wiederholen soll und genau den gleichen Code an zwei oder mehreren Stellen im Projekt platzieren, wodurch die Wartbarkeit und Anpassbarkeit eines Projekts erhöht wird. [5] Events Sogenanntes Event-driven programming wird vorallem bei interaktiven Programmen/Applikationen verwendet. Hier wird mittels Event-listeners die auf eine gewisse Aktion, welche ein Tastendruck oder ein Klick mit der Maus sein kann, gewartet und je nach Event wird eine andere Aktion ausgeführt und so wird dem User ständig Feedback gegeben. Im Lightning Framework werden zwischen Komponenten-events und Applikation-events unterschieden. Bei Komponenten-events werden die Events von der Komponente oder einer Komponente innerhalb dieser verarbeitet. Applikation-events sind globale Events, auf diese Events kann jede Komponente hören und dann dementsprechend eine Aktion ausführen. [6]');
INSERT INTO page_content (page_id, content) VALUES(3, 'Bei Salesforce kommt es immer zu benutzerdefinierten Entwicklungen, wenn der Wunsch des Kunden nicht mit den Funktionen von Salesforce selbst realisiert werden kann. Hier wird serverseitig Apex verwendet um Datenbankabfragen auszuführen, Userdateneingabe zu kontrollieren oder Error-handling der Applikation. Im Frontend wird eine Kombination aus dem Lightning Component Framework und Aura verwendet. Im Unternehmen musste ich für einen Kunden ein bestehendes Feature, die sogenannte Community, erweitern. Hier hatte ich Tätigkeiten in allen Bereichen, ich habe im Frontend mit dem Lightning Component Framework Animationen und Strukturen erstellt. Ebenfalls habe ich im Frontend die Kommunikation mit dem Server geschrieben. Hier war besonders darauf zu achten, dass die Daten vom Benutzer korrekt eingegeben wurden und alles Notwendige an Daten eingegeben wurde. Im Backend mussten die Daten richtig verarbeitet werden und die Daten wurden hier nochmal kontrolliert und danach, wenn alles passt, in die Datenbank gespeichert und abhängige Daten werden angelegt. Danach wird eine Antwort an das Frontend geschickt, damit die Verarbeitung weiterlaufen kann. Da Salesforce ein in sich geschlossenes System ist, war es anfangs sehr schwer für mich, mich in diesem Ökosystem zurecht zu finden. Innerhalb der ersten zwei Monate habe ich mich nur in Salesforce eingelesen und für die Administrator Zertifizierung gelernt und diese erfolgreich bestanden. Mittlerweile lerne ich bereits für meine nächste Zertifizierung für die Platform Developer Zertifizierung.');
