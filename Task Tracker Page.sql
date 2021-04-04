--Open Tasks Due Today (Example for Manager MNGR1)  
duedate < 1d AND duedate >= 0d AND assignee IN ("MNGR1") AND project = "Agency Services – Business Unit"
OR
duedate <= 0d AND assignee IN ("MNGR1") AND status IN ("Open", "In Progress")


--Task Due Today (Example for the Employee EMP01)
duedate < 1d AND duedate >= 0d AND assignee IN ("EMP01") AND project = "Agency Services – Business Unit"
OR
assignee IN ("EMP01") AND project = "Agency Services – Business Unit" AND status = "In Progress" 
OR
resolutiondate < 0d AND resolutiondate > -1d AND assignee IN ("EMP01") AND status IN ("Done", "Blocked")
OR
duedate <= 0d AND assignee IN ("EMP01") AND status = "Open"
OR
assignee IN ("EMP01") AND resolution = "Unresolved" AND updatedDate <= 0d AND updatedDate > -1d AND status IN ("Blocked", "Done")


--Open Tasks Due Tomorrow (Example for Manager MNGR1)
duedate <= 1d AND duedate > 0d AND assignee IN ("MNGR1") AND project = "Agency Services – Business Unit"


--Tasks Due Tomorrow (Example for the Employee EMP01)
duedate <= 1d AND duedate > 0d AND assignee IN ("EMP01") AND project = "Agency Services – Business Unit"


--Open Tasks Due for the Rest of the Week (Example for Manager MNGR1)
duedate < 7d AND duedate > 1d AND assignee IN ("MNGR1")  AND project = "Agency Services – Business Unit"


--Task Due for the Rest of the Week (Example for the Employee EMP01)
duedate < 7d AND duedate > 1d AND assignee IN ("EMP01") AND project = "Agency Services – Business Unit"


--Open Task Due Over a Week (Example for Mangager MNGR1)
duedate < 14d AND duedate >= 7d AND assignee IN ("MNGR1") AND project = "Agency Services – Business Unit"


--Task Due Over a Week (Example for the Employee EMP01)
duedate < 14d AND duedate >= 7d AND assignee IN ("EMP01") AND project = "Agency Services – Business Unit"


--Tasks Finished Yesterday (Example for Employee EMP01)
resolutiondate <-1d AND  resolutiondate > -2d  AND assignee IN (EMP01) AND status IN (Done, Blocked)  OR assignee IN (EMP01) AND resolution = Unresolved AND updatedDate < -1d  AND updatedDate > -2d AND status IN (Blocked, Done)                        


--Tasks Finished This Week (Example for Employee EMP01)
duedate > -7d AND duedate < -1d and  assignee IN (EMP01)        

 
