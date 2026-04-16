# Deployment Templates | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/84a3d6c27b1e4cd3a8b8db9a256b1552.html?locale=en-US&state=PRODUCTION&version=2603
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


	
Deployment Packages
	
Deployment Setup
	
Deployment Templates
	
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
Deployment Templates

Deployment templates enable you to create templates that contain as many products as you need. Templates can be applied to any package and reused in future deployments. As a result, the deployment process is more streamlined.

Create a Deployment Template

As an example, this procedure shows you the steps to create a deployment template named January Deployment that contains the following products: Project Management, Software Evaluation and Software Implementation.

Go to Setup  General  Deploy / Send Changes  Deployment Templates.

Click Create Template.

A new page displays.

In Name, enter a name for the template (January Deployment).

Click Add Product.

A pop-up appears, displaying all available products.

Select the checkboxes next to the above-mentioned products: Project Management, Software Evaluation and Software Implementation.

Click Add Selected.

The selected products display in the Select Product field.

Select a version for each product from the Select version dropdown list. Admins can create new product versions (See Product Version ) in the Products tab while leaving the original products intact.

Click Checklist next to each product to view the Product Sending Checklist for the product.

On the Product Sending Checklist, deselect the checkboxes next to the items you want to exclude. For example, exclude scripts from the checklist that is sent with the Software Implementation product.

Save the template.

You can inspect the content of the template by clicking  next to the template name. Additionally, you can download or delete the template.

Apply the Deployment Template

Applying the newly created template to a package will populate the package with the products listed in the template.

Go to Setup  General  Deploy / Send Changes  Deployment Packages.

Click Create Package.

In the Create New Package section, enter a name for the template (January).

In Destination Environment, select the environment you want to deploy the package to.

In the Deployment Package Component section, select Apply Template.

The Select Template dropdown list appears.

Select the template you want to apply (January Deployment).

Click Add.

Products from the list you applied are listed in the package.

Click Save.

The package displays in the grid on the Deployment Packages tab.

Click  to send the package to the destination environment.

Reapply the Template

If you edit the products which are a part of a previously created template and wish to send these product changes to the destination environment, you can reapply the existing template to which these products belong, instead of manually creating a completely new deployment package. Reapplying the template causes the template to automatically obtain the latest product updates from SAP CPQ and populate the package with those product updates.

The procedure for reapplying a deployment template is the same as the procedure for applying a deployment template for the first time as described above. Since reapplying the template causes it to automatically obtain product updates from SAP CPQ, you do not need to edit the template in any way.

The previous example shows how to create a deployment template named January Deployment that contain the following products: Project Management, Software Evaluation and Software Implementation. For the current example, imagine that in February you decide to attach a global script to the Project Management product. Instead of manually creating a completely new package to send the product change to the destination environment, you can reapply the template you created for January deployment. Doing that will cause the template to automatically obtain the global script you added to the Project Management product and populate the package.

To view the package deployed in January as well as the one deployed in February, go to the Deployment Packages tab. In addition, a package can also be downloaded. To download a package, click  next to the package name.

Note

When you download both packages, you can upload them to Git and compare their XML files to see what changed.

On this page
Create a Deployment Template
Apply the Deployment Template
Reapply the Template
Yes
No