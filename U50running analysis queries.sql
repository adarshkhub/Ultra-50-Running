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

-- What was the average time for each age group
-- Need to group in buckets

-- Doesn't Work
Select total_minutes from u50running
case when age < 30 then 'age_20to29'
	 when age < 40 then 'age_30to39'
	 when age < 50 then 'age_40to49'
	 when age < 60 then 'age_50to59'
	 else 'age_60+'
	 end as age_group
)

-- Top 3 Males and Females

--What was the average time for each age group (By Decade)