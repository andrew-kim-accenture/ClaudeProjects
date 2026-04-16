# Recommendations on Quotes and Use Cases | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f80fbcd4f1c74232839c30ce26886f07/71f615652c4f4317a5f5e8616095db18.html?locale=en-US&state=PRODUCTION&version=2603
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
	
CX AI Integration


	
Set up CX AI Integration
	
Data Requirements
	
Recommendations on Quotes and Use Cases
	
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
Recommendations on Quotes and Use Cases

Product and pricing recommendations are based on customer's previous sales data stored in SAP CPQ and on the data of CRM opportunities associated with SAP CPQ quotes.

CX AI recommends only products that are currently not included in the quote.

When recommendations are available for a quote, the Recommendations button ( ) is active and clicking it opens a list of recommendations with these options:

Add Product - add a simple product to the quote. The product has a predefined list price. After adding a product to the quote, as recommended, the respective item is added at the end of the list of items and is no longer recommended by the system.

Change Discount - apply a discount to a product that is already in the quote. CX AI provides recommendations only for the NRC discount. The icon  displays next to quote items for which a discount is recommended.

Decline - reject a recommendation.

When there are no recommendations to display, the Recommendations button is grayed out. The system learns from the user's activity and adjusts future recommendations accordingly.

Note

Recommendations get reset whenever an item is added or removed and when item’s quantity and discount on the quote are changed.

Use Cases
Cross-Sell CX AI Use Case

The cross-sell CX AI use case generates real-time cross-sell recommendations based on the following general assumptions:

Customers who purchased X, Y, Z also tend to purchase A, B, C. For example, customers who purchased laptops also tend to purchase laptop cases.

Customers with X, Y, Z in their quote also purchased A, B, C. For example, customers with printers in their cart also purchased ink and paper.

Product X is most popular among customers in a specific segment. For example, mid-tier insurance is popular among customers in the SMB financial segment.

The cross-sell use case takes in quote and opportunity data to train multiple product recommendation models based on the customer's purchase history, the customer's current quote contents, and the most popular product by similar customers in the same segment. CX AI for SAP CPQ uses the models to generate recommendations.

At prediction time, SAP CPQ sends the content of a quote and a customer ID to the prediction end point. CX AI then returns a number of cross-sell recommendations that can be provided to the SAP CPQ end user.

Sometimes as a result of insufficient data quality or quantity, the recommendation system can't make a tailored cross-sell recommendation at a high level of confidence. In this case, CX AI provides a recommendation of the most popular product among customers who are most similar to the customer for whom the quote is being configured. Even in cases where the cross-sell model quality is low, the recommendation system can still provide a personalized cross-sell recommendation.

Pricing CX AI Use Case

The pricing CX AI use case generates real-time recommendations for pricing markups and discounts.

This use case considers quote and opportunity data to train a predictive model that recommends the best discount or markup for a particular product for a specific quantity. The recommendations are customized for the sales representative and the customer and optimize the likelihood of closing a deal.

Note

Pricing recommendations are only supported for simple (non-configured) products and are available only for non-recurrent prices.

As products are added to a quote either manually, or by accepting a cross-sell recommendation, SAP CPQ presents recommended pricing from CX AI as a discount of up to -100% or a markup up to +100%.

Related Information
Data Requirements
On this page
Use Cases
Related Information
Yes
No