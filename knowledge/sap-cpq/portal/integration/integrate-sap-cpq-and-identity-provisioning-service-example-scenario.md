# Integrate SAP CPQ and Identity Provisioning Service (Example Scenario) | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/9ebddc5cccd24a2a97ae101961704196.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Integration GuideVersion: 2603English
Provide feedback on our search

	
SAP CPQ Integrations
	
Integrations with SAP Solutions


	
System Requirements for SAP Integrations
	
Integrations with SAP Back-End Systems
	
SAP Sales Cloud Integration
	
SAP Commerce Cloud Integration
	
SAP Subscription Billing Integration for Quote 2.0
	
Integration with SAP Master Data Integration
	
Identity Provisioning Service Integration


	
Integrate SAP CPQ and Identity Provisioning Service (Example Scenario)
	
CX AI Integration
	
Integration with Central Entry Point
	
Subscription to Events
	
Federated Single Sign-On
	
External Configurator Integration for Quote 2.0
	
AdobeSign Integration
	
Icertis Contract Intelligence Integration
	
DocuSign Integration
	
Toolset for Developing Custom CRM Integrations
	
MS Dynamics Integration
	
Salesforce Integration
	
CRM Integration
Integrate SAP CPQ and Identity Provisioning Service (Example Scenario)

On this page, we have described one of the ways to integrate SAP CPQ with the Identity Provisioning service and Identity Authentication service in order to provision users. Depending on what you wish to accomplish and your specific business model, the steps detailed in our example may differ in your setup.

In our example business scenario, we want to provision users from Identity Provisioning to multiple SAP CPQ environments (one production, one development and one test tenant). For this purpose, Identity Provisioning needs to be set up as the source system and each SAP CPQ environment as the target system.

SAP CPQ Setup
Create User Types and Users

Create user types.

You need to create user types which will be assigned to provisioned users (for example, Company_DEV, Company_Mngm, and Company_Users).

The benefit of segregating users into different user types is that you can then add them in different permission groups and leverage the Access Rights feature and give them the access rights which are exclusive for their permission group.

Create permission groups.

In our example, we have created three permission groups (for example, Company_DEV_PG, Company_Mngm_PG, and Company_Users_PG) and assigned each of them the respective user type created in the previous step.

Set up Federated Single Sign-On

Follow the instructions in Federated Single Sign-On to set up FSSO.

Below is the screenshot of the FSSO setup for our example business scenario.

Identity Authentication Setup

Create user groups.

Create one user group for each permission group created in SAP CPQ. Additionally, you need to create the administrator user group for all users that you wish to enable as administrators in SAP CPQ.

This page explains how to populate the fields.

Add users into user groups either manually one by one or via Excel upload.

Note

Company is a required field in SAP CPQ, so when you create a user in Identity Authentication, you must assign it a company that exists in SAP CPQ. Otherwise, the user won’t be provisioned properly.

Identity Provisioning Setup
Set up the Source System

Create a source system (for example, SAP CPQ Source) of the type Identity Authentication.

Fill out the fields in the Properties tab by following these instructions.

Note

Copy user ID and password from the SAP Cloud Platform Identity Authentication Service system user and map them to the User and Password fields, respectively.

Configure the transformations.

We have added one specific condition that maps the email of the user in Identity Authentication to the username of the user in SAP CPQ.

In our business scenario, the login name is the ID of the user made of random numbers and the email is made of the respective user’s first and last name. To differentiate users easily by their name when they are provisioned in SAP CPQ, we have created a condition that sets the user's email as their username in SAP CPQ.

Additionally, in the federation attribute mappings, we have set a mapping that overrides the user ID with the user’s email. Uid in the federation mappings is retrieved either from the Federation ID field on each user or from the Username field. Since the SCIM API can’t retrieve the federation ID, it will retrieve the username, which is the user’s email in our business scenario.

Set up the Target System

Create target systems (for example, SAP CPQ Development, SAP CPQ Test and SAP CPQ Production).

In the Transformations tab, define a condition that removes the IsSsoUser flag from the SAP CPQ administrator user.

SSO users can’t be authenticated in the target system.

Fill out the fields in the Properties tab by following these instructions.

Since in the source system, we’ve mapped the user’s email to the username, in the User field we need to enter the user’s email followed with the # character and the tenant name (jamie.peters@cpq.com#tenant_name).

Run the Provisioning Job

Once you’ve set up the system, you need to either schedule or run manually the job that will provision new and update existing users in SAP CPQ.

Go to the source system in Identity Provisioning.

Open the Jobs tab.

Click Run Now.

Before running the job, you can first subscribe to email notification to be notified about possible failed entities during the provisioning.

Additionally, check the Job Logs for details on the job execution.

During the job execution, Identity Provisioning reads user groups and users from Identity Authentication and then provisions them, user by user, to the target SAP CPQ systems.

Related Information
SCIM API
Identity Provisioning Service Integration
Multi-factor Authentication
On this page
SAP CPQ Setup
Identity Authentication Setup
Identity Provisioning Setup
Related Information
Yes
No