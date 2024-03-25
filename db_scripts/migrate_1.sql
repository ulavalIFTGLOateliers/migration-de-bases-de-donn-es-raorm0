CREATE TABLE IF NOT EXISTS band (   bandName varchar(50),
                                    creation YEAR,
                                    genre varchar(50),
                                    PRIMARY KEY(bandName));
INSERT INTO band VALUES ("Crazy Duo", "2015", "rock"), ("Luna", "2009", "classical"), ("Mysterio", "2019", "pop");

SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);
DELETE FROM musician;
INSERT INTO musician VALUES ("Alina", "Darcy", "Boles", 32, "vocals", "Crazy Duo"),
                            ("Mysterio","Jessie","Chancey",23, "guitar", "Mysterio"),
                            ("Rainbow", "Sarah", "Derrick", 47, "percussion", "Crazy Duo"),
                            ("Luna", "Emily", "Seibold", 31, "piano", "Luna");
SET FOREIGN_KEY_CHECKS=1;