SELECT ROUND(data.LAT_N, 4)
FROM (
SELECT station.LAT_N, @rownum:=@rownum+1 as `row_number`, @total_rows:=@rownum
  FROM STATION station, (SELECT @rownum:=0) r
  ORDER BY station.LAT_N
) as data
WHERE data.row_number IN (FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2));
