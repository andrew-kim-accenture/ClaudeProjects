# Report Module | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/0c6a4fc02b704232874cca092d9a00fa.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings


	Setup Help

	
Application Parameters
	
Deploy / Send Changes
	
Report Module
	
Countries/Regions, States and Territories
	
Dictionaries
	
Manage Generated Documents
	
File Management
	
Email Settings
	
Time Zones
	
Custom Tabs
	
Recurring Background Jobs Executed on Tenants
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Report Module

This feature gives users a Reports and Dashboards Overview Page that includes a list of existing reports in the system. As an SAP CPQ administrator, you can search reports and executed different actions on them.

Note

The Report Module is in maintenance mode and will not be developed further.

The included scheduler functionality that is dependent on a third party component is not working reliably.

Here is a list of all actions available on each report: edit, clone, view, and delete.

A Delete button is located at the top right corner. Administrators can select several report actions and delete reports in bulk. This enables administrators to avoid having to delete one by one. To create a new report click New Report and to create a new dashboard, click New Dashboard. The list on the left contains all existing labels created by admins users. Labels help admin users organize reports into categories. Administrators can add more than one label to a report, which makes it easier to find a report when searching for it.

Labels

Labels help administrators organize reports or dashboards into any category. Labels do all the work that folders do, but with an added bonus: more than one label can be applied to a report or dashboard.

By selecting a particular label, you can filter out items contained only in that label in which case the active label will be marked red. You can reset the label selection by clicking the root node Labels view all items.

When viewing reports, you can tick the checkbox next to the reports, click Labels, and click the label you want to associate with the report(s). You can also check the boxes next to several labels and click Apply.

To manage labels, you must locate one of the existing labels on the left-hand side and click it. When you right-click it, it will open a context menu with the following actions: add, rename and delete.

Labels can be added as a sub folder of a root label, or as a sub folder of existing labels. You can also rename the label as well as delete it.

The sub-label can be created below a label that already exists by selecting which label you would like to place it under. Then click Add Label in the context menu. The hierarchy can also be changed by moving nodes using drag and drop.

Create New
When you click New, you can choose to create the following: report, dashboard, and predefined report.

You can also create a new report using the Report Wizard. To do so, you must choose New Report to go to Report Wizard.

The first step of the Report Wizard contains the following fields:

Report name - required field

Description - optional

Report data source - required

Report type - required

The Report data source field contains a list of views/tables or stored procedures that were configured to be a possible source of data for this report. All tables/view and queries that are created in the Report module administration will be listed when creating a new report. You will also be able to create a data source, which can be done in the administration section of the Report module. Report Type supports three types of reports: Table, Chart and Gauge. Depending on the selected report type, you will have different screens for entering the remaining information needed to complete the report creation process.

In the Cache Frequency dropdown, you can select the frequency for refreshing the report results, for each report type. For example, if you select daily frequency, the system will cache the report results, and then, after one day, it will refresh the report and show the latest results.

Report Custom Filters
A report module enables report creators to add custom filter conditions, to group and organize them and to provide report parameters (called dynamics and dynamic inputs). This will allow end users to provide additional data for retrieving records from the data source and displaying them on the report.
Adding Predefined Conditions

You can add a filter condition for any of the available fields from the selected data source by choosing a value from the Select drop-down list.

The default option for any of the new conditions is a predefined value. A predefined value is used to filter records from the data source and it cannot be changed when executing the report.

Report Filtering
Creating filters lets you narrow down the data contained in the data source used for the report. A data source can be used in multiple reports, but the filtering criteria is specific for the report in which it was created.
Adding Filtering Conditions

In the Report Filter Criteria page, you can:

set the maximum number of results that will be displayed after the filter is applied. If this number is lower then the number of records retrieved from the database, the system won't be able to run the report and the following error message will be displayed: An error occurred while processing your request.

choose how fields are sorted.

set the logic between multiple filtering groups (And and Or).

add multiple filters in filtering groups.

clear the defined queries.

In the central part of the page, you define the actual filtering conditions by selecting the values in three dropdowns:

Select the column from the data source used in the report that should be filtered.

Select the logical operator (equals, Is empty, Ends with, and so on).

Select the condition type:

L - Literal – filters one specific entry. For example, if you are filtering users by their username, you can enter a username here.

@ - Parameter – name of the field used as a search field in the next step. For example, if you’ve selected the data source column with usernames in the first step, you can name the parameter Username and apply the filter. The system will show all users in the system and in the User field you can enter the username of one specific user.

C – Context – conditions that filter users dynamically. Available conditions are $UserId and $UserName.

When creating filtering conditions, it is important to match the data source column with the filter criteria. For example, if you are filtering users by usernames, you need to select the data source column that stores usernames.

Dynamic Conditions

Dynamic or context conditions allow filtering users by the ID and the first and last name of the logged in user. The advantage of using dynamic over other conditions is that when a dynamic condition is applied, different users can run the same query report and they get the results for their respective users. Unlike the literal and parameter conditions which return values for one specific user.

For example, you can combine the dynamic conditions with other conditions to get a list of all quotes that pertain to the logged in user.

The following dynamic conditions are available in the Report Module for SAP CPQ:

$UserId – searches for a user whose ID is the same as the ID of the logged in user.

$UserName – searches for a user whose first and last name match the first and last name of the logged in user.

Grouping Conditions
With grouping, a report creator can organize existing conditions in a hierarchical way and connect them with either AND or OR logical operator. This new group section can contain any number of simple conditions or child groups. You can change the position of the simple element or group using a drag and drop functionality.

While we don't recommended it, it is possible to nest an unlimited number of subgroups within any group of conditions. A logical operator for a group can be changed from AND to OR and vice versa by clicking a toggle button in the group header which shows the current logical operator. You can collapse and expand a group and unigroup's conditions at any point, as well as delete a group.

The Tabular Report Type contains one step that must be completed in order to add the information needed for the generation of this report type. You must choose what fields will be included in the report and decide if you want to create a row or column groups. You can make the selection by dragging and dropping the fields from the area “Available fields” to areas, such as “Row Groups”, “Column Groups” or “Values.”

You can apply some of the aggregate functions on selected fields.

The Chart Report Type Page provides many different types of charts. As an administrator, you can choose bars, pies, columns and other graphic types.

Fields for a chart report are selected in the same way as fields for a tabular report type.

Report Viewer Page

The Report Viewer Page contains the report and, alternatively, report parameters defined using dynamic input fields created in the Report Criteria page. Based on the report filter definition, some fields can be made mandatory or can use existing lookup views as the data source for selection.

Microsoft Report Viewer Control is used for report rendering on the page. It contains standard controls for paging, searching and exporting (pdf, excel, word).

A Report Viewer Page may contain several tabs for faster updating of the report definition or report filter definition on the left-hand side: Report, Criteria Definition, and Report Definition.

Report Viewer Page – Additional layout parameters
Based on the report type a report view page can contain additional control with parameters related to the current report. Chart types reports can be changed inline. This inline change is temporary and allows end-users without administrative permissions to change parts of report layouts, as well as export such reports.
Report Module Administration Section

When you click Administration  Data Source, the list of all data sources (table/query/view) is displayed.

You can create a new data source and when you click Add, the following fields are displayed: display name, type, and name.

All fields are required. When Table or View is chosen, a list of all tables and views will be displayed, with an administrator able to choose a desired table/view.

If Query is chosen, a field in which a SQL query should be written will be displayed.

Lookup Fields

This section focuses on the following:

Explaining filter parameters section of the report Add/Edit.

Giving administrators the ability of having drop-down menus as filter parameters.

Building filters through drop-down options.

Creating a lookup field can help improve the efficiency of the data entry process. The fields that are candidates for lookup are usually the ones which are foreign keys. Let’s say that in a table called “Activity” we have a “UserId” column, and we want to allow users a simple way of entering a value for this field when defining the report filter. You can enter a value, but usually this information is hard to remember and prone to errors. Report module allows end users to define what data sources can be used as lookup sources.

The first step is to enter a new data source and choose a User table.

The “Is Lookup” field must be checked and other two fields (Value and Display Field) must be populated in order to create a lookup source. The Value field, in this case, is a user id; for a display field you can choose any column from the Users table, for example, username, email, first name, last name, etc.

The second step is to open another data source and locate an “uid” column from this source. When you open a detail view of that column you will see a new field called “Lookup.” This drop down will now contain a “Users” data source previously defined as lookup.

Instead of numeric control, the new lookup control will be displayed on a report filter page when once you choose this column. This control is more advanced and contains one label and two buttons.

When you click the first button a window with advanced grid control will pop up. It will include search, paging and a sorting functionality. At this point, you can make your selection by double-clicking a row in the grid, or by selecting a row and then clicking OK.

The Grid Control will contain only those columns that we chose in the Display Name field. Once you select an item from the grid, a label will contain the Display Name.

Report RDL Templates
The Report Module supports adding RDL report templates which can define a standard layout for various reports, such as defining the standard header and footer section on all reports. This RDL template file is a standard RDL report, created using a Microsoft Report Viewer, Visual Studio or some other tool. An RDL template can be any valid report definition file containing a placeholder element. This can be rectangle element named “Report”. This rectangle element will define the actual size and position, so you can specify how much space is allowed for a table, chart or gauge.

The Lookup Control used for report template selection also contains a preview functionality which enables you to see the preview of the RDL Template. We recommended that the RDL template creator puts a visible border on a rectangle placeholder so that a report creator can see its position and the dimension before generating a report with a selected template. The placeholder border will be removed once the report is generated, so it is used only for preview purposes.

New templates can easily be uploaded on the same control, by clicking the Add button.

Viewing and Configuring Dashboards
Dashboards give you a bigger overview by displaying summaries of different reports as widgets on a single page. With a dashboard, you can monitor more reports at once. A list of existing dashboards can be found on the “Reports and Dashboards Overview Page” where you can easily find or create a new dashboard.

You can insert am existing report or frame in each widget on the dashboard page. You can choose to insert a chart type report or a tabular report in iframe. To do so, you must specify the format type that will be used for this report (pdf or image).

Multilanguage - Translation
Internationalization and localization are supported in Report Module. The Application Client of Report Module can specify culture and language which should be used. Appropriate Date, Time and Numeric Formats are applied based on the culture used.

Adding New Languages is also supported in the administration part of Report Module. Import and export of existing data enables you to edit translation in Excel and then easily upload it back onto the server.

User Side
When you click the Graphic Reports page, you will be redirected to the page where all reports visible to users will be displayed in the iFrame. Users will be able to run/view reports on the User Page. All reports that are visible to a user's permission group, will be displayed on this page. Default reports will be visible to users as well. If the user is an SAP CPQ administrator, he or she will be able to view/run all default reports. But if the user is not an SAP CPQ administrator, the user will be able to run only the context reports with associated him or her.
On this page
Labels
Create New
Report Custom Filters
Adding Predefined Conditions
Report Filtering
Dynamic Conditions
Grouping Conditions
Report Viewer Page
View all
Yes
No