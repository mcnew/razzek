use application;

CREATE TABLE context (
	id INT NOT NULL AUTO_INCREMENT,
	eid VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE context_attribute (
	id_context INT NOT NULL AUTO_INCREMENT,
	`key` VARCHAR(100) NOT NULL,
	value VARCHAR(1000) NOT NULL,
	FOREIGN KEY (id_context) REFERENCES context(id),
	PRIMARY KEY (id_context, `key`)
);
