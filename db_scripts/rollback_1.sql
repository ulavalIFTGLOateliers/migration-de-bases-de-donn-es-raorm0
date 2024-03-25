ALTER TABLE musician DROP COLUMN bandName;
ALTER TABLE musician DROP COLUMN role;
DROP TABLE IF EXISTS band;
ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;