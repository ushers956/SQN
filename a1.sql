CREATE TABLE supplier (
    SNO TEXT PRIMARY KEY,
    SNAME TEXT,
    STATUS INTEGER,
    CITY TEXT
);

INSERT INTO supplier (SNO, SNAME, STATUS, CITY) VALUES
 ('S1', 'smith', 20, 'london'),
 ('S2', 'Usher', 10, 'paris'),
 ('S3', 'josh', 30, 'canada'),
 ('S4', 'troy', 20, 'london'),
 ('S5', 'adams', 30, 'athens');

SELECT * FROM supplier;