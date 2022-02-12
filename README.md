# Pewlett-Hackard-Analysis
## Overview of Analysis

### Due to an large amount of impending retirements in the Pewlett-Hackard company, we have been tasked with analyzing company data to establish how many and which employees will be retiring in order to assist in preperation for the staffing loss. We will also detrmine which of the retiring employees might make good mentors for the new employees that will be brought on to replace the retirees.

## Retirement/Mentor Analysis Results

### In this analysis we looked at which employees will be retiring in the near future as well what positions will be vacated in that loss. We also looked at which employees might make a good fit for a mentorship program to train the new employees.
  -  Possibly the most important number to look at in this situation is the number of employees that will actually be a part of this "Silver-Tsunami". Looking at the data we see that 72,458 employees will be retiring over the three year period of time we looked at. As the total number of current employees with Pewlett-Hackard is 240,124 the retirees represent 30% of the entire workforce.
![Retiring_Titles](retiring_titles.png)
  -  As you see in the image above, only two of the retirees have the Title of management. However, the vast majority of retirees hold senior level positions, 50,844 in total. Meaning 70% of retirees hold senior level positions
  -  The data above also shows us that 36,291 of the retirees are engineers. This means of all the retirees, 50% of them are engineers 
  -  To attempt to get a list of employees who could participate in the mentorship program we looked at current employees who were born in the year 1965. This provided a list of 1549 names of employees who might be able to act as mentors to the new hires.

## Summary

  As was stated above, in answer to the question we started with, how many roles will need be filled as the "Silver Tsunami" begins to make an impact, Pewlett-Hackard will be losing approximently 30% of it's workforce. With the number that high they definately need to start acting as soon as possible. We can modify the query we used for the image above to compare that data to the total amployees for each Title in order to see if any are being hit particularly hard. Using the below query we get the displayed result showing us that the 30% is consistant accross all titles other then management where it is only 22%  ...
![title_compare_qry.png](title_compare_qry.png)
![All Compare Retiring_Titles](all_and_retiring_titles.png)

  Above we looked at the data as it related to the job titles that would be lost. We did not however look at which Departments would be losing staff. This is probably important data as well, since if certain departments are hit harder then others they become so short staffed they can't function. This imformation would also effect the mentorship program because if there is no one in the department to mentor new hires it would present a problem. 
  
  ...Look at title of mentors to compare qty/title retiring to qty/title mentoring...look at when mentors were hired (someone who just started working there might not be a good mentor.)...Look at when people are retireing we looked at 3 years, break down data by year to figure out what positions need to be filled first...What Departments are losing people

