create database tableau_project1;

use tableau_project1

select * from dbo.[Depression+Student+Dataset]

update dbo.[Depression+Student+Dataset]
set gender = 'f'
where gender = 'Female'

update dbo.[Depression+Student+Dataset]
set gender = 'm'
where gender = 'male'

select gender, count(*) from dbo.[Depression+Student+Dataset]
group by gender

select * from dbo.[Depression+Student+Dataset]
where gender = ' '

select * from dbo.[Depression+Student+Dataset]
where gender is null


------------------
--Age group column

select age, count(*) as age_count from dbo.[Depression+Student+Dataset]
group by age
order by age_count desc

alter table dbo.[Depression+Student+Dataset]
add age_group varchar(50)

select * from dbo.[Depression+Student+Dataset]

update dbo.[Depression+Student+Dataset]
set age_group =
case when age between 18 and 24 then 'Group A'
else case when age between 25 and 30 then 'Group B'
else 'Group C'
end
end

select age_group, count(*) as age_group_count from dbo.[Depression+Student+Dataset]
group by age_group

---------------------------------------
--adding index and change in depression columns

alter table dbo.[Depression+Student+Dataset]
add Index_column smallint identity(1,1)

select * from dbo.[Depression+Student+Dataset]

--updating depression column values

alter table dbo.[Depression+Student+Dataset]
alter column depression Varchar(max)

update dbo.[Depression+Student+Dataset]
set depression = 'No' where depression = 0;

update dbo.[Depression+Student+Dataset]
set depression = 'Yes' where depression = '1';

select * from  dbo.[Depression+Student+Dataset]
