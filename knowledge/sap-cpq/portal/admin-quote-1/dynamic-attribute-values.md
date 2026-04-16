# Dynamic Attribute Values | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/a7264748dcf14871a5e7afdd7bd78c55.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0Version: 2603English
Provide feedback on our search

	
Administration
	
Product Administration


	Setup Help

	
Products
	
Categories
	
Attributes


	
Create Attributes
	
Attribute Types
	
Dynamic Attribute Values
	
Attribute Quantity
	
Attribute Visibility Restrictions
	
Unit of Measurement
	
Product Types
	
Custom Tables
	
Sequences
	
Sequence Substitution
	
Guided Selling
	
Product Favorites
	
Product Tabs
	
Quick Search and Advanced Search
	
Set Configuration Based on XML
	
Custom Configurator XSLT
	
Pricing/Calculations
	
Quotes Administration
	
User Administration
	
User Interface Design
	
Workflow-Approvals
	
Renewal Management
	
Customer Administration
	
Develop
	
General Settings
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags
Dynamic Attribute Values

A dynamic attribute value does not have a predetermined set of possible values when the knowledge base is synchronized; instead, the list of potential values is retrieved dynamically from the back-end during run-time configuration.

In the Knowledge Base, the Dynamic attribute type is uniquely defined by having the Additional Values parameter set to FALSE and the domain of Possible values set to EMPTY.

During run-time configuration, the potential values for dynamic attributes are dynamically retrieved from the back-end, depending on the selection of other attributes that the dynamic attribute is dependent on.

For example, if the Sales Rep chooses a car type, the dynamic attribute for the list of tires will only show tires dedicated to that specific car type. This way, the Knowledge Base doesn't need to be updated frequently when there are changes to the tire options, and it also prevents a long list of tire values for all car types from being displayed.

The Dynamic attribute is set to be displayed as a dropdown by default. However, if the configuration includes an unrestricted domain, it will be displayed as a free input. If the attribute is both dynamic and has the multiValue flag set to true, it will be displayed as a checkbox.

The following is a table explaining all the factors that influence the display type and the IsDynamic flag inside CPQ during KB sync:

PossibleValues

	

AdditionalValues

	

MultiValued

	

IsDynamic (Result)

	

DisplayAs (Result)




TRUE

	

FALSE

	

FALSE

	

FALSE

	

dropdown




TRUE

	

FALSE

	

TRUE

	

FALSE

	

checkbox




TRUE

	

TRUE

	

FALSE

	

FALSE

	

free-form




TRUE

	

TRUE

	

TRUE

	

FALSE

	

free-form




FALSE

	

FALSE

	

FALSE

	

TRUE

	

dropdown




FALSE

	

FALSE

	

TRUE

	

TRUE

	

checkbox




FALSE

	

TRUE

	

FALSE

	

FALSE

	

free-form




FALSE

	

TRUE

	

TRUE

	

FALSE

	

free-form

Restriction: For dynamic attribute input, decimal values must be represented with a period (.) and comma (,) is not allowed.

Special Case for Advanced Variant Configurator ( AVC) Clients

Note

Clients who want to utilize dynamic attributes alongside AVC optimization must ensure that the necessary settings are in place (to be set to **).

AlwaysUseOriginalDynamicAttributeDisplayType * to * true (please consult with support).

The dynamic attribute usage logic for AVC clients is adjusted based on the logic for optimizing performance:
Note

To enable dynamic attribute usage logic for AVC, contact SAP CPQ support:

Attribute display type determination is during the runtime configuration.

If the attribute is dynamic and the parameter SAP_CPS_ShouldFetchPossibleValuesPerTab is set to false, the behavior will remain the same for non AVC users.

When the parameter SAP_CPS_ShouldFetchPossibleValuesPerTab is set to true, all values except for the Default Value will be removed. If the application parameter AlwaysUseOriginalDynamicAttributeDisplayType is set to false, the attribute will default to a free input with no matching display type, which was the behavior before dynamic attributes were introduced.

In the case where both parameters SAP_CPS_ShouldFetchPossibleValuesPerTab and AlwaysUseOriginalDynamicAttributeDisplayType are true, the attribute will retain its original display type determined during KB Sync. This is intended to accommodate clients with AVC optimization who still want to use dynamic attributes. However, in this scenario, free input for dynamic attributes is not allowed.

Yes
No