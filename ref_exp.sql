-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true

select distinct(city)
from station
where city regexp '.*[aeiou]$';

-- https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true

select distinct(city)
from station
where city regexp '^[aeiou].*[aeiou]$';

-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem?isFullScreen=true

select distinct(city)
from station
where city not regexp '^[aeiou].*';