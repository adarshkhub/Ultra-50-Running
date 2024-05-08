select * from u50running

-- Find how many different states were represented in the race
select count(Distinct state) from u50running

-- What was the average time of men vs women?
Select avg(total_minutes) from u50running
group by gender

-- What was the age of the youngest and oldest participant of each gender in the race?
select gender, min(age) as youngest,
max(age) as oldest
From u50running
group by gender

--What was the average time for each age group (By Decade)