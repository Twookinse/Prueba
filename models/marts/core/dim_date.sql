with dates as ( 
 
    select  
        dateadd(day, seq4(), '1996-01-01') as date_day 
    from table(generator(rowcount => 5000)) 
 
) 
 
select 
    date_day, 
    year(date_day) as year, 
    month(date_day) as month, 
    day(date_day) as day, 
    dayofweek(date_day) as weekday 
from dates 