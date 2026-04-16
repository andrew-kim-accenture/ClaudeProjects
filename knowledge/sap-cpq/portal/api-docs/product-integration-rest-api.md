# Product Integration REST API | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/ac872c9ab08f4ccab3825659c7362d32.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ API DocumentationVersion: 2603English
Provide feedback on our search

	
SAP CPQ API
	
SOAP API
	
XWS (EXTERNAL WEB SERVICE)
	
Invalid XML Characters
	
API Example
	
External Webservices
	
REST API


	
SAP CPQ REST API Authentication
	
SAP CPQ to Third Party Authentication
	
Script API
	
SCIM API
	
Configurations API
	
Custom Table API
	
Rate Plans API
	
REST API for Updating Ship To, Bill To, and End User
	
API for Content Upload
	
REST API Error Codes
	
Custom API (Global Scripts Consumed as REST API Web Services)
	
User Interface API
	
Product Integration REST API


	
Product Integration API Structure
	
Product Integration API Examples
	
Headless SAP CPQ Configurator
Product Integration REST API

The Product Integration REST API includes the following operations: GET, POST, PUT, PATCH, DELETE, BULK INSERT, BULK UPDATE, BULK UPSERT, and BULK DELETE.

Note

When you replicate multiple products, use single product management endpoints sequentially. Wait for each request to return a response before proceeding to the next. Avoid parallel requests to prevent database table locking, which can impact tenant performance. Aside from database table locking, data integrity is not guaranteed when using parallel requests. For managing multiple products, it's recommended to use bulk endpoints.

Endpoints:

HTTP Method: GET

api/product/v1/Products/{id}

This method retrieves a product by its ID. If you don't use the expand=all parameter, only the basic information of the product is returned. The basic information is always included. Use $expand=All to get all details, or $expand=Attributes to get the subnode and 'Attributes' along with the basic information. By default, 10 products are returned, but you can request up to 1000 products at once. As mentioned, $expand=All will return all details. For other values of $expand query keywords, check API documentation. You can return any combination of details for the product. For example: $expand=Attributes,localScripts. For more details, visit the page: Product Integration API Structure | SAP Help Portal.

HTTP Method: GET

api/product/v1/Products

This method retrieves a list of products. Basic information is always included. If no expand parameter is provided, only basic information is returned. Use $expand=All for all details, or $expand=Attributes for the subnode and 'Attributes' along with the basic information. By default, 10 products are returned, but you can request up to 1000 products at once. As mentioned, $expand=All will return all details. For other values of $expand query keywords, check API documentation. You can return any combination of details for the product. For example: $expand=Attributes,localScripts. For more details, visit the page: Product Integration API Structure | SAP Help Portal.

HTTP Method: POST

api/product/v1/Products

Use this method to create a new product, a new version of an existing product, or a product alias by providing the aliasParentSystemId. The POST payload should include the productIntegrationListItem, which is the same as the one returned by the GET method by ID.

HTTP Method: PUT

api/product/v1/Products/{id}

Use this method to update a product. The PUT payload should include the productIntegrationListItem, which is the same as the one returned by the GET method by ID. Modify the properties you want to update.

HTTP Method: PATCH

api/product/v1/Products/{id}

Use this method to update specific properties of a product. The PATCH payload should include only the properties of the productIntegrationListItem that need changes. You can also update related product objects by providing the system ID and the properties to modify.

Note

The PATCH endpoint for the product integration API has been updated to return a Bad Request error if the payload includes a product in the collection that does not already exist in the system. This change means that the PATCH method is now strictly for updating existing products, and cannot be used to add new products or delete existing ones. Previously, the endpoint would simply update the existing products and return an OK status, without adding non-existent products or removing those not included in the payload.

HTTP Method: DELETE

api/product/v1/Products/{id}

This method deletes a product by its ID. If the product is used elsewhere, validation errors will appear.

HTTP Method: POST

BULK INSERT

api/product/v1/Products/$bulk

The body should contain an array of objects similar to a POST API call for a single product. Check the Location header of the response to fetch bulk job statuses.

HTTP Method: PUT

BULK UPDATE

api/product/v1/Products/$bulk

The body should contain an array of objects similar to a PUT API call for a single product, but the ID should be included in the body instead of the route. Check the Location header of the response to fetch bulk job statuses.

HTTP Method: PUT

BULK UPSERT

api/product/v1/Products/$bulk/upsert

The body should contain an array of objects similar to a PUT API call for a single product, but in this case, the ID is ignored and SystemId is used instead to determine whether the update or insert operation will be performed. The system tries to update the active product version with the provided SystemId if it exists. Otherwise, it tries to create a new product or a new version. Check the Location header of the response to fetch bulk job statuses.

HTTP Method: PATCH

BULK DELETE

api/product/v1/Products/$bulk

The body should look like this: [{"id": 999999, "deleted": true}, {"id": 88888, "deleted": true}]. Check the Location header of the response to fetch bulk job statuses.

HTTP Method: GET

api/product/v1/Products/$bulk

You can use standard parameters for paged, sorted, and filtered requests, similar to the endpoint for getting all products. There is no $expand parameter, but you can use $filter with options like operation, status, message, productSystemId, productId, or ID.

HTTP Method: GET

api/product/v1/Products/$bulk/{id}

This method returns all product operations with their statuses and messages.

Product Integration for Send/Deploy Functionality

The Product Integration API can be used instead of the Send/Deploy functionality to provide better performance.

Related Information
ProductsIntegration API Documentation
Yes
No