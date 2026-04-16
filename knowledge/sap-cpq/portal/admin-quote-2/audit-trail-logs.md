# Audit Trail Logs | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/13a56edcbadd4b0c8387cdab01404e1a.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 2.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Sales Area Administration
	
Quotes Administration
	
Business Partners
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail


	
Audit Trail Logs


	
Admin Actions Audit Trail
	
User Actions Audit Trail
	
Products Audit Trail
	
Attributes Audit Trail
	
Pricebooks Audit Trail
	
Custom Tables Audit Trail
	
Logged Data
	
Change Set
	
SAP CPQ Tags
Audit Trail Logs

SAP CPQ tracks all actions that administrators and users perform throughout the application and logs them in the dedicated section of the Setup. The audit trail logs changes that are performed either directly in the application or via API.

Any logged information can be found in the following tabs in Setup  Audit Trail  Audit Trail:

Admin Actions Audit Trail

User Actions Audit Trail

Products Audit Trail

Attributes Audit Trail

Pricebooks Audit Trail

Custom Tables Audit Trail

The audit trail permanently retains records. However, if you want logged information to be automatically and permanently deleted, you can specify data deletion intervals in Setup  Security  Data Deletion  Audit Trail Deletion. See Audit Trail Deletion for more information.
Filtering and Searching
You can search the audit trail records by performing a global search, an advanced search or by using the quick filter. Additionally, you can select which audit trail columns are visible by clicking , selecting or unselecting individual columns and clicking Save.
Note

The timeout for searching audit trail data is 5 minutes. If you filter audit trail records, but there is an extensive number of records logged, the search automatically ends after 5 minutes if it wasn't completed in that period. If you experience a timeout, we recommend that you filter the records using the Date column, which is indexed and more likely to provide the requested results.

Global Search

To perform a global search across all tabs, follow the steps.

Click Global Filters in the top-right corner of the page.

A pop-up window appears with search fields: Change Set ID, User, From, and To.

Enter the search terms in the dedicated field or fields.

Alternatively, select the From and To dates to filter the records created between those dates.

All the audit trail grids are now filtered according to your search criteria. You can search multiple fields at the same time.

Advanced Search

The advanced search filters only the currently open audit trail tab. It is conducted directly in column headers and allows you to search every column in the grid.

To perform an advanced search by columns, follow these steps.

Click .

The grid with columns appears. Each column in the grid contains a dedicated search box.

Enter your search criteria in any of the search boxes.

A search box is available for every column in the grid (a Search by Period toggle and From and To fields are available for the Date column). You can search multiple fields at the same time.

The search results are displayed in the corresponding columns.

The currently open audit trail grid is now filtered according to your search criteria.

Click X in the search box to remove the search criteria you entered.

Alternatively, you can use the quick filter to instantly search the currently open audit trail tab. The quick filter works the same way as the advanced search, except that it only filters by the parameters listed in the search bar. The parameters are specific for every audit trail tab.

Audit Trail Search Logic
You can combine the search filters in the following ways:

If value A is entered in the global search, and value B is entered in the advanced search, the records in the currently open tab are filtered by the value B. However, all the other audit trail tabs are filtered by value A.

If the quick filter is applied on any audit trail tab, it overrides all other search filters, both global and advanced.

Related Information
Change Set
Logged Data
Audit Trail Deletion
On this page
Filtering and Searching
Related Information
Yes
No