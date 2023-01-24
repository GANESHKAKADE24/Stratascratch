Question link-- https://platform.stratascratch.com/coding/10299-finding-updated-records?tabname=question


--sql ans
with tab1 as(
select 
*,
row_number()over(PARTITION BY id order by salary desc) as rnk
from ms_employee_salary )

select
id,	first_name,	last_name,	department_id,	salary
from tab1
where rnk=1
order by id asc


--python
# Import your libraries
import pandas as pd

# Start writing code
df=ms_employee_salary.head()
df=ms_employee_salary

df.sort_values(by=['id','salary'], ascending=[True,False]).groupby(['id']).first().reset_index()
