# Countries/Regions, States and Territories | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/bf1562733d5247f78f8f0a9c61e5382a/e2dd7c0e103e4294b720e08c349bf52f.html?locale=en-US&state=PRODUCTION&version=2603
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
Countries/Regions, States and Territories

To define countries/regions, states and territories in SAP CPQ, access the Countries/Regions, States and Territories sections in Setup, respectively. The created entities will be available in the system when managing some other features (for example, when defining users).

For countries/regions, it is required to define a three-letter abbreviation and a two-letter abbreviation, both of which are mandatory. For states, you need to define only one abbreviation, with either two or three letters. Use the abbreviations defined by the ISO standard.

Names of countries/regions can be translated into different languages by clicking the translation icon in the row of the country/region whose name you want to translate. On the following page, you can select more than one language in the language dropdown menu. For every selected language, a field appears, where you are prompted to enter a translation for the selected language country/region name.

If no other country is selected in the dedicated fields in the user interface, the system pulls the default country defined in the application parameter Default Country/Region (Application Parameters  General Parameters). However, if making updates via scripting, and no country is defined in the script, the system disregards the parameter and sets the United States as the country by default.

States

State abbreviations are not unique in the system, but they need to be unique within a country/region. You can create multiple states with the same state abbreviation as long as the states pertain to different countries/regions.

States are treated separately throughout SAP CPQ. When managing users, customers and companies in Setup, the system displays only the states that pertain to the selected country/region.

Territories

When defining territories, you need to enter their name and system ID. The System id is generated automatically from the territory name, but you can override it by clicking . Territories are treated separately from countries/regions and states in the system. When managing users, for example, you can select any of the territories, even if their actual geographical position is not within the selected country/region and state.

On this page
States
Territories
Yes
No