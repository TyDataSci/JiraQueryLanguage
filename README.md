# JiraQueryLanguage
Documentation for advanced queries of the JIRA Query Language to create useful dashboards in Confluence
## Task Tracker Dashboard
![Screenshot](blogpics/dashboard.png)


## Open Task Pool, Due Today
![Screenshot](blogpics/OpenPool.png)

```SQL
duedate < 1d AND duedate >= 0d AND assignee IN ("MNGR1") AND project = "Agency Services – Business Unit"
```
```SQL
OR
duedate <= 0d AND assignee IN ("MNGR1") AND status IN ("Open", "In Progress")
```

## Employee 1's Task Pool, Due Today
![Screenshot](blogpics/Employee1.png)
```SQL
duedate < 1d AND duedate >= 0d AND assignee IN ("EMP01") AND project = "Agency Services – Business Unit"
```
```SQL
OR
assignee IN ("EMP01") AND project = "Agency Services – Business Unit" AND status = "In Progress" 
```
```SQL
OR
resolutiondate < 0d AND resolutiondate > -1d AND assignee IN ("EMP01") AND status IN ("Done", "Blocked")
```
```SQL
OR
duedate <= 0d AND assignee IN ("EMP01") AND status = "Open"
```
```SQL
OR
assignee IN ("EMP01") AND resolution = "Unresolved" AND updatedDate <= 0d AND updatedDate > -1d AND status IN ("Blocked", "Done")
```

