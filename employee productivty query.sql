SELECT * FROM empoyee_performance_tracker.extended_employee_performance_and_productivity_data;
use empoyee_performance_tracker

/* describe data types*/
describe extended_employee_performance_and_productivity_data;

/*convert hire date to date column */
set sql_safe_updates=0;
  
/*update extended_employee_performance_and_productivity_data
set 

Hire_Date= STR_TO_DATE(Hire_Date, '%d/%m/%Y');*/  /* this command not worked and give me error so I tried the next*/

ALTER TABLE extended_employee_performance_and_productivity_data
MODIFY Hire_Date DATE;

/* check nulls in data */ 
SELECT 
    SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) AS department_nulls,
    SUM(case when Gender is null then 1 else 0 END ) AS gende_nulls,
    SUM(case when Age is null then 1 else 0 END) AS age_nulls,
   SUM(case when  Job_Title is null then 1 else 0 END  ) AS job_nulls,
    SUM(CASE WHEN Hire_Date IS NULL THEN 1 ELSE 0 END) AS hire_Date_nulls,
    SUM(CASE WHEN Years_At_Company IS NULL THEN 1 ELSE 0 END) AS Years_At_Company_nulls,
    SUM(CASE WHEN Education_Level IS NULL THEN 1 ELSE 0 END) AS Education_Level_nulls,
    SUM(CASE WHEN Performance_Score IS NULL THEN 1 ELSE 0 END) AS Performance_Score_nulls,
    SUM(CASE WHEN Monthly_Salary IS NULL THEN 1 ELSE 0 END) AS Monthly_Salary_nulls,
    SUM(CASE WHEN Work_Hours_Per_Week IS NULL THEN 1 ELSE 0 END) AS Work_Hours_Per_Week_nulls,
    SUM(CASE WHEN Projects_Handled IS NULL THEN 1 ELSE 0 END) AS Projects_Handled_nulls,
    SUM(CASE WHEN Overtime_Hours IS NULL THEN 1 ELSE 0 END) AS Overtime_Hours_nulls,
    SUM(CASE WHEN Sick_Days IS NULL THEN 1 ELSE 0 END) AS Sick_Days_nulls,
    SUM(CASE WHEN Remote_Work_Frequency IS NULL THEN 1 ELSE 0 END) AS Remote_Work_Frequency_nulls ,
    SUM(CASE WHEN Team_Size IS NULL THEN 1 ELSE 0 END) AS Team_Size_nulls,
    SUM(CASE WHEN Training_Hours IS NULL THEN 1 ELSE 0 END) AS Training_Hours_nulls,
    SUM(CASE WHEN Promotions IS NULL THEN 1 ELSE 0 END) AS Promotions_nulls,
    SUM(CASE WHEN Employee_Satisfaction_Score IS NULL THEN 1 ELSE 0 END) AS Employee_Satisfaction_Score_nulls,
    SUM(CASE WHEN Resigned IS NULL THEN 1 ELSE 0 END) AS Resigned_nulls 
FROM extended_employee_performance_and_productivity_data ; 

/* CHECK DUPLICATES*/
select 
Employee_ID , Department , Gender , Age , Job_Title , Hire_Date , Years_At_Company ,
 Education_Level ,Performance_Score , Work_Hours_Per_Week , Monthly_Salary , Projects_Handled ,
 Overtime_Hours , Sick_Days ,Remote_Work_Frequency , Team_Size ,Training_Hours , Promotions , 
Employee_Satisfaction_Score ,  Resigned , 
count(*) as Duplicate_count 
from  extended_employee_performance_and_productivity_data 
group by 
Employee_ID , Department , Gender , Age , Job_Title , Hire_Date , Years_At_Company ,
 Education_Level ,Performance_Score , Work_Hours_Per_Week , Monthly_Salary , Projects_Handled ,
 Overtime_Hours , Sick_Days ,Remote_Work_Frequency , Team_Size ,Training_Hours , Promotions , 
Employee_Satisfaction_Score ,  Resigned 
having count(*) >1  ;
  
  /* no dupicates , dat ais cleaning   so we will start to analyze it */ 