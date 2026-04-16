# Custom Table Web Method - Input Parameters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/dcf51e9ef8de4276ab6d94dfa111ace4.html#input-xml-example-for-updaterows-action
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API


	
Simple Product Administration SOAP API
	
Customer Administration SOAP API
	
User Administration SOAP API
	
ImportMaterialsFromERP SOAP API
	
Company Administration SOAP API
	
Link Opportunity SOAP API
	
Custom Table Administration SOAP API


	
Create Table Input XML Schema - AUX Table Administration
	
Create Table Output XML Schema - AUX Table Administration
	
Custom Table Administration - Output Parameters
	
Custom Table Administration Details
	
Custom Table Administration Execution Workflow
	
Custom Table Searching Rules
	
Custom Table Web Method - Input Parameters
	
Export Rows Input XML Schema - AUX Table Administration
	
Export Rows Output XML Schema - AUX Table Administration
	
Insert Update Upsert Delete Input Schema
	
Insert Update Upsert Delete Output Schema
	
Get Catalogue Data SOAP API
	
Get Quote Data SOAP API
	
Get Quote Items Attributes SOAP API
	
Request for Quotation SOAP API
	
Search Quotes SOAP API
	
Search Quotes from SF SOAP API
	
New Quote SOAP API
	
Place Order SOAP API
	
Validate Catalogue Codes SOAP API
	
Get Cart Properties SOAP API
	
Get Cart Actions SOAP API
	
Perform Cart Action SOAP API
	
Add Items Data SOAP API
	
Perform Quote Action SOAP API
	
Set Cart Properties SOAP API
	
Set Cart Properties For Every Quote In Opportunity SOAP API
	
Set Cart Item Properties SOAP API
	
Create New Quote and Get Quote Data SOAP API
	
SOAP API Authentication
	
SOAP API Error Codes
	
Pricing API
	
DoYouSeeMe API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API
Custom Table Web Method - Input Parameters

Tag

	

Data Type

	

Description

	

Required

	

Comments




Username

	

String (20)

	

Only SAP CPQ administrators can execute this function. SAP CPQ user is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator user name




Password

	

String (25)

	

Only SAP CPQ administrators can execute this function. Password is defined in SAP CPQ Setup.

	

Yes

	

SAP CPQ administrator's password for the administrator user name provided in the username element




Action

	

String (50)

	

Action that will be executed for the AUXTable

	

Yes

	

Examples: 1. CREATETable 2. DELETEROWS




AUXTablesproperties

	

XML

	

Object Passing User Data

	

Yes

	

The AUXTablesproperties XML structure for each action is shown




TableName

	

String(100)

	

Name of the table on which the action will be performed – no white spaces allowed

	

Yes

	

ExternalPrices

Input XML definition – for CreateTable actions

Field Name

	

Description

	

Sample Data

	

Input

	

Type

	

DefaultSize

	

Nullable




ColumnName

	

The name of the column from specified table. Only alphanumeric signs are allowed. White spaces are not allowed.

	

FirstName

	

text

	

50

	 	

false




ColumnSize

	

Size for specified column

	 	 	 	 	 


DbType

	

Type for specified column

	

SecondName

	

text

	

NVARCHAR

	

250

	

true/false




Active

	

boolean

	

BIT

	 	

true/false




Price

	

number

	

INT

	 	

true/false




DateValidUntil

	

date

	

DATE

	 	

true/false




DatetimeValidUntil

	

datetime

	

DATETIME

	 	

true/false




RecPrice

	

float

	

DECIMAL

	

2

	

true/false


Input XML definition – for other actions

Field Name

	

Description

	

Sample Data

	

Type

	

Size




Column

	

The name of the column from specified table. Only alphanumeric signs are allowed. White spaces aren’t allowed. This column can have an attribute key. It is used in UPDATEROWS and UPSERTROWS. If set to 1, the column will be considered as a search criteria

	

FirstName

	

Text

	

50




Value

	

Value for specified column

	

Jack

	

Text

	

Depends on column size

Input XML Example for CREATETABLE action


<Root>
  <Columns>
    <Column>
      <ColumnName>AccountId</ColumnName>
      <ColumnSize>200</ColumnSize>
    </Column>
    <Column>
      <ColumnName>FirstName</ColumnName>
      <ColumnSize>2000</ColumnSize>
    </Column>
    <Column>
      <ColumnName>SecondName</ColumnName>
      <ColumnSize>2000</ColumnSize>
    </Column>
    <Column>
      <ColumnName>IntColumn</ColumnName>
      <DbType>int</DbType>
      <IsNull>true</IsNull>
     </Column>
     <Column>
      <ColumnName>DecimalColumn</ColumnName>
      <DbType>decimal</DbType>
      <IsNull>true</IsNull>
      <ColumnSize>2</ColumnSize>
    </Column>
    <Column>
      <ColumnName>NvarcharColumn</ColumnName>
      <DbType>nvarchar</DbType>
      <ColumnSize>250</ColumnSize>
      <IsNull>false</IsNull>
    </Column>
    <Column>
      <ColumnName>BitColumn</ColumnName>
      <DbType>bit</DbType>
     <IsNull>false</IsNull>
    </Column>
    <Column>
      <ColumnName>DateColumn</ColumnName>
      <DbType>date</DbType>
     <IsNull>false</IsNull>
    </Column>
    <Column>
      <ColumnName>DateTimeColumn</ColumnName>
      <DbType>datetime</DbType>
     <IsNull>false</IsNull>
    </Column>
  </Columns>
</Root>

We can see that there are different type of columns that user can defined. Columns type NVARCHAR and DECIMAL have default values (250, 2). All columns can be nullable. Also, when new table is created, primary auto increment key ‘CpqTableEntryId’ is added to the table, which will be used for update and delete actions, and be obtained using Export action.

By default, all column names will be converted to upper case. This behavior can be changed in Setup  Application Parameters  General  “Allow lower case column names when creating tables via API”.

Input XML Example for UPSERTROWS action

UPSERTROWS action

This action is used to either update all or the specific set of records in the custom table, or to insert new rows if they don’t exist. The action takes into account search criteria defined in the input XML.

Any column can be set as a search criteria by adding the key attribute to the column and setting its value to 1.

Number of rows per one call is limited to 1000. If more than 1000 rows is supplied, the error message will be shown and no processing will occur.

Similarly, if there is a column in the custom table that has been set as a 'Non Null' column, it must be supplied through the XML input file. If it is not supplied, the error message will be shown and no processing will occur.



<?xml version="1.0" encoding="utf-8"?>
<Root>
  <Columns>
    <Column key="1">Username</Column>
    <Column>Name</Column>
    <Column>Email</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>jsummers</Value>
      <Value>John Summers</Value>
      <Value>jsummers@something.com</Value>
    </Row>
    <Row>
      <Value>jlongly</Value>
      <Value>Jack Longly</Value>
      <Value>jlongly@something.com</Value>
    </Row>
  </Rows>
</Root>
If the custom table record with username “jsummers” already exists, SAP CPQ will find it (searching by column “username”) and update it with the values provided through the input XML. However, if the custom table record with username “jlongly” does not exist, SAP CPQ will insert the new one.
Note

if any record causes an error, it will be skipped but all the other records that don’t cause any error will be processed (updated or inserted).

Input XML Example for INSERTROWS action

If any record already exists, the error will be returned in the output XML, and all other non-existing records will be inserted. Column node can’t have ‘CpqTableEntryId’ value.

Number of rows per one call is limited to 1000. If more than 1000 rows is supplied, the error message will be shown and no processing will occur.

Similarly, if there is a column in the custom table that has been set as a 'Non Null' column, it must be supplied through the XML input file. If it is not supplied, the error message will be shown and no processing will occur.



<Root>
  <Columns>
    <Column>AccountId</Column>
    <Column>FirstName</Column>
    <Column>SecondName</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>23</Value>
      <Value>Jack</Value>
      <Value>Longly</Value>
    </Row>
     <Row>
      <Value>44</Value>
      <Value>John</Value>
      <Value>Summers</Value>
    </Row>
  </Rows>
</Root>
Input XML Example for EXPORTROWS action


<Root>
  <Columns>
    <Column>AccountId</Column>
    <Column>FirstName</Column>
  </Columns>
  <SearchCriteria>
    <Value>23</Value>
    <Value >Jack</Value>
  </SearchCriteria >
</Root>

Column node can’t have ‘CpqTableEntryId’ value. The search will be performed on search criteria, where AND condition will be used between values. All table rows that matches the condition will be returned.

The result XML will be explained later.

Input XML Example for EXPORTTABLE action

This action does not require any input parameters. Custom table name is the only field that must be populated.

Note

There is no limit of max number of rows exported.

Input XML Example for UPDATEROWS action

UPDATEROWS action

CpqTableEntryId can be used as a search criteria. In this case it must be the first in the list of columns within Input XML. Maximum number of rows is 1000. The following input XML uses it as a search criteria.



<Root>
  <Columns>
    <Column>CpqTableEntryId</Column>
    <Column>AccountId</Column>
    <Column>FirstName</Column>
    <Column>SecondName</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>23</Value>
      <Value>23</Value>
      <Value >Jack</Value>
      <Value >Longly</Value>
    </Row>
      <Row>
      <Value>27</Value>
      <Value>25</Value>
      <Value >Denis</Value>
      <Value >May</Value>
    </Row>
  </Rows>
</Root>
However, CpqTableEntryId column is not the only column that can be used as a search criteria. Other columns can be also used. You can set the column as a search criteria by adding a key attribute to the XML column node.
Note

If CpqTableEntryId column is used as a search criteria, no other column can be set as a search criteria at the same time. That being said, if you define one or more columns as the search critera then CpqTableEntryId can't be one of them.

The following example demonstrates the situation when column 'username' is set as a search critera.


<?xml version="1.0" encoding="utf-8"?>
<Root>
  <Columns>
    <Column key="1">Username</Column>
    <Column>Name</Column>
    <Column>Email</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>jsummers</Value>
      <Value>John Summers</Value>
      <Value>jsummers@something.com</Value>
    </Row>
    <Row>
      <Value>mbill</Value>
      <Value>Michael Bill</Value>
      <Value>mbill@something.com</Value> 
    </Row>
  </Rows>
</Root>
Input XML Example for DELETEROWS action

DELETEROWS action

CpqTableEntryId column can be set as a search criteria for this action. In this case the input XML should look like the one that follows. Maximum number of rows is 1000.



<Root>
  <Columns>
    <Column>CpqTableEntryId</Column>
   </Columns>
  <Rows>
    <Row>
      <Value>23</Value>
    </Row>
      <Row>
      <Value>27</Value>
     </Row>
  </Rows>
</Root>
Besides CpqTableEntryId, other columns can be set as a search criteria by adding them within Columns tag. If the searched record could not be found, an error is returned for that particular record and records that are found get deleted.


<?xml version="1.0" encoding="utf-8"?>
<Root>
  <Columns>
    <Column>Username</Column>
  </Columns>
  <Rows>
    <Row>
      <Value>jsummers</Value>
    </Row>
    <Row>
      <Value>mbill</Value>
    </Row>
  </Rows>
</Root>
Input XML Example for DELETETABLE action
In this case input XML is ignored.
On this page
Input XML definition – for CreateTable actions
Input XML definition – for other actions
Input XML Example for CREATETABLE action
Input XML Example for UPSERTROWS action
Input XML Example for INSERTROWS action
Input XML Example for EXPORTROWS action
Input XML Example for EXPORTTABLE action
Input XML Example for UPDATEROWS action
View all
Yes
No