# JiraQueryLanguage
Documentation for advanced queries of the JIRA Query Language to create useful dashboards in Confluence

```JQL
duedate < 1d AND duedate >= 0d AND assignee IN ("MNGR1") AND project = "Agency Services – Business Unit"
OR
duedate <= 0d AND assignee IN ("MNGR1") AND status IN ("Open", "In Progress")
```
