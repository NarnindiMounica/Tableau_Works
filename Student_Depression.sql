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