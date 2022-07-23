SET @P20 = 0;
SELECT repeat('* ', @P20 := @P20 + 1) FROM information_schema.tables WHERE @P20 < 20;
