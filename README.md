# **Pewlett-Hackard-Analysis**

## Overview of the Project
The purpose of the assignment was to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Then the report is summarized to help prepare for the "silver tsunami" as many current employees reach retirement age.
## Analysis Results
-A large number of people have more than one titles because of promotion.
<br /> -After removing duplicate employee numbers, only around 1000 employees titles left.
<br /> -After getting the most recent titles of retiring employees, we can see that senior engineers are the group that need the new employees to fill in the roles the most.
<br /> -Only two managers will retire soon. 

![retire_sum](retire_sum.png)
## Summary
-Query:
<br />SELECT COUNT(me.title), me.title
<br />FROM mentorship_eligibility as me
<br />GROUP BY me.title
<br />ORDER BY count(me.title) DESC;
<br />![me_sum](me_sum.png)


