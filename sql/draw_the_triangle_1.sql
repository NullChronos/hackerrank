SET @P20 = 21;
SELECT repeat('* ', @P20 := @P20 - 1) FROM information_schema.tables;
