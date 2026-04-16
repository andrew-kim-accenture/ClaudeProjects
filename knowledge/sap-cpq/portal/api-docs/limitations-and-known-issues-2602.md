# Limitations and Known Issues 2602 | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/e6c842b6d8294bed986c454074deae5d.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Limitations and Known IssuesVersion: 2603English
Provide feedback on our search

Limitations and Known Issues 2602

The following list describes the limitations of SAP CPQ for the current release.

General Limitations

When autocomplete attributes referencing quote tables are deployed within a quote item custom field deployment package, the referenced quote tables are deployed without actions, validations and permissions.

When deploying quote item custom fields, the deployment is not supported if the package contains quote tables referenced by autocomplete attributes and any columns in these tables are defined as attributes that do not exist on the target environment.

If a quote entity (for example, quote custom field) flagged as PII sources an attribute marked with the Suppress Information Logging flag, any changed values on the quote entity are logged. If logging of information contained in the attribute is suppressed; it is recommended that the Suppress Information Logging flag is also enabled for the entity which carries the attribute.

Changes on PII are not logged in the Personal Data Log if a product is added to a container that is not listed as a line item.

In Cart Fields Administration, an incorrect prompt box displays when the administrator tries to edit the previously created statuses or user types.

Expiration dates on quotes are calculated incorrectly for UTC-6:00 and lower on the quote list page.

If a single quotation mark is inserted in the custom tab name for My Quotes, Other Quotes and Waiting for Approval tabs the characters written after the quotation mark are erased.

Currently, it is not possible to update the configuration of a product that contains an autocomplete attribute if the source of the autocomplete attribute is changed (for example, from a custom table to a quote table).

The Created date and Created by columns in the product versions window are empty for the primary product version.

The scrollbar is missing from the Current Quote dropdown menu when more than ten products are added to the quote.

The product types in the Display Type columns are not properly aligned in Products.

Some labels in SAP CPQ are displayed in English even when the system language is set to Portuguese (Brazil).

Sorting the simple rules for a product in Products by the Action column results in a server-specific error.

In the Setup  Security  Data Deletion  Blocked Data tab, administrators cannot select quotes which are not listed in the Blocked Quotes list, that displays when the search bar is clicked.

It is possible to create a product with an existing system ID in Products.

While performing user export via the Bulk Import/Export feature, administrators can click Filter and Export and perform user export without stating all necessary filter parameters. If the filter is used properly, however, some of the exported users do not fit the applied filter criteria. Furthermore, clicking Export All Users does not export all users.

Column names in the attribute value grid are inconsistent with the column names in the column selection popup window. This issue is only present in Products.

If an administrator performs one change in the source environment as a part of the Change Set A and another change as a part of the Change Set B, both changes will be sent as a part of the Change Set B if they are deployed in the same package when Change Set B was selected in Setup.

Columns in Products remain visible even though the parameters which determine their visibility state otherwise.

Tooltips are missing when users click the + button next to the Revision input in the Quotation tab.

Administrators can't import new product attributes or product attribute values via import/export functionalities.

If custom permission groups, which have the same name as some companies, brands, users or markets in the system, are added to the <permissions> node of the SimpleProductAdministration web method, that company, brand, market or user may be assigned to the permission instead.

Custom dictionaries can't be set as default per a user.

Quote 1.0. doesn't support parallel work of multiple users on the same quote.

The maximum query string length for GET endpoints is 2048 characters. When this limit is exceeded, an error message (Error occurred!) is displayed.

Only PEM (Privacy Enhanced Mail) .cer files can be used for certificate upload.

Client certificates are used to issue tokens which are used for calling other APIs (token-based APIs invocation).

The maximum number of records that can be retrieved with the SqlHelper.GetList method is 1000.

The system parses the <* EffectiveDate *> tag only in the context of the product. This means that the tag can be successfully used in the Configurator but not in the quote (parsing the tag in the quote will only return the string <* EffectiveDate *>).

The maximum length of JSON strings is 2097152 characters, which is equivalent to 4MB of Unicode string data.

If an administrator uses Quick Search to look for products according to their name or part number, and then clicks Export Products, only the products whose Name contains the search parameter are exported. However, it is possible to filter and export products according to their Part Number with the advanced/column search functionality.

Moving an item up or down the item list on the quote is possible only if there are other items of the same item type in the list. For example, if there are multiple base and only one optional item on the quote, you can move the base items up or down but you can't move the optional item. Adding another optional item would allow you to reposition them. This behavior is applicable both if you move items manually in the application and if you use the dedicated methods IQuoteItem.MoveUp and IQuoteItem.MoveDown.

SAP CPQ doesn’t have a retention framework for keeping and managing the access to customer data after the business purpose for keeping the customer data in the system has expired. SAP CPQ has a deletion framework which should be used to delete customers from SAP CPQ once business purpose has expired. The reason why no retention policy has been developed is that SAP CPQ is mainly used in integrations with CRM software and back office systems (ERP) who act as the single source of customer data. The data is only replicated into SAP CPQ and should be deleted after there is no longer any business purpose to keep it in the system.

When working with the Configurations API, multi-level products (collections, system lists, parent-child products, and configurable products that use container attributes) are not supported. Additionally, setting the value of autocomplete attributes via this API is not supported.

If the name of one product matches the part number of another product, and if you search that value with the parameters Enable product search by part number in ‘Add Products’ section of the quote and Enable product search by product name and description in ‘Add Products’ section of the quote enabled, only the product with that name appears in the suggestions, but both are returned as results in the Catalog. In addition, both products are returned in the quote quick search.

In customized responsive templates, custom C# code is invalid. For details, see Razor Validation in Responsive Templates.

The limit of payloads for the Custom API is 2MB. The payload limitation, more than 1000 keys, can be resolved by providing Param as JSON serialized to string:

{ "Param": "{ \"myProp1\": \"myVal1\" }" }

When generating word output documents, line spacing is automatically inserted between paragraphs within table cells. Every tag within a table cell paragraph will have its options changed during the generation process. However, when generating PDF output documents, the paragraph options will remain the same as in the input templates.

If a customer wants to upload any type of file in SAP CPQ larger than 20MB through any of SAP CPQ Setup pages, then:

Need to create a support ticket. The validity of request will be further determined and it may be approved or rejected.

After the approval, support team will organize uploading of such a large file with other internal SAP CPQ departments, in the requested locations in SAP CPQ. The prerequisite is that customer needs to send that file to support through an initial support ticket.

The standard Bulk Import/Export function for Excel has a row limit of 1,048,576, with the first row being utilized for column headers. A fatal error will occur if exporting products, attributes, translations, or similar items exceeds a total of 1,048,575.

Tiered Pricing Tags are utilized to retrieve Tiered Pricing tables per Item from a Quote as an object in Excel format, which is embedded in the Word output generated document. While the Excel object can be accessed successfully when generating a PDF document, it cannot be opened from the PDF, although it is visible. This limitation is typical of PDF format documents. However, the Excel object can be opened successfully from Word-generated documents.

When the client uses the default email client to send emails (by choosing the Send mail using your default mail client on the last page of the document generation process), SAP CPQ is unable to confirm whether the email was successfully sent. As a result, SAP CPQ does not mark the Sent To Customer checkbox on the Documents tab (in Quote) as checked.

The Excel that is displayed in the generated PDF documents cannot be opened (instead, it can only be visible as an object), and it can only be opened in Word-generated documents.

Tiered Pricing document generation tags cannot be used in Excel-type document generation templates.

The maximum capacity for a container attribute type is 1000 products. This limit applies to all methods of adding products, including through the UI, attribute import, or API.

ST tags are only compatible with Word templates and cannot be used in Excel. They are designed to be included in Word and PDF documents. Additionally, these tags are only applicable in Simple output templates and cannot be utilized in Section and Multi-Section templates.

The document generation engine doesn't support the Q_TAG_FILE tag in Excel templates. It's only supported in Word document templates.

The CTX tag Visitor.BelongsToPermissionGroup will not work in the market visibility condition located on the Pricing/Calculations/Market Visibility Condition page.

In cases where the same Section template is used two or more times in a Multi-section document generation template, and that Section contains Additional Content files, selecting these files will not function properly during the second step of the document generation process (customizing the template). SAP CPQ administrator users are advised not to use the same Section templates repeatedly in their Multi-section templates, especially when Additional Content files are included.

During the process of importing companies into SAP CPQ, the State column must be filled with a state abbreviation if the country is the United States or Canada.

The Quote 2.0. does not support PDA Approval.

The Personal Identifiable Information (PII) log currently only works for Quote 1.0. It does not support the Quote 2.0. quote engine.

If an entity on a quote (such as a quote custom field or quote item custom field) sources an attribute, and both the quote entity and attribute are marked as PII (Personal Identifiable Information) data, any changes to the PII quote entity will record the old and new values. However, if the attribute is also marked as Sensitive data, it is advised that the entity carrying the attribute must also be marked as Sensitive PII.

The distribution feature does not allow the automation of custom distribution calculation methods that depend on quote items. Therefore, each time quote items are changed, a manual distribution action must be taken.

If a quote is blocked, then it's not possible to select it from the quote list page.

If the SAP CPQ - Commerce flow starts directly from SAP CPQ, it is not possible to release a quote together with a Proposal Document from SAP CPQ to Commerce.

If ST tags are used in document generation templates, all content should be chosen and/or modified in the Customize step of the document generation process before using the Preview option on that template. Only after this step can the preview be performed, including those files.

The approval description will always be displayed in the language that the submitter has selected in the User Page  Default Dictionary while requesting approval.

Popover Positioning in all tables from User side.

Popovers for many tables in SAP CPQ, such as the list of items, may not remain aligned with their trigger elements when scrolling within tables. This is a known limitation due to technical constraints related to positioning and container structure.

If the document generation tags <<C_PNAME>> and <<C_DESC>> contain any formulas, they will not be parsed, and the generated documents will always display the content exactly as written in the tag itself.

It is possible to define several active certificates for signing SOAP messages for the same external service. SAP CPQ will use the first certificate from the list. However, SAP CPQ must validate this configuration and should not allow more than one active certificate for the same outbound service.

Popovers displayed within all tables in SAP CPQ do not follow their trigger elements when scrolling. This behavior affects all popovers rendered inside tables across the SAP CPQ. For performance and stability reasons, no automatic repositioning is implemented at this time. SAP CPQ recommend closing the popover before scrolling, if possible.

If document generation tags are used to retrieve tables in Excel format within PDF-generated documents, such objects are visible but cannot be opened from the PDF. However, the Excel objects can be opened successfully from Word-generated documents.

SAP CPQ does not support attribute versions. An issue has been observed with VC integration when the Attribute Type and Display Type do not match, which is caused by changes in the attribute definition. Since attribute definitions are shared across all product versions, any modification affects all versions. SAP CPQ supports only the latest attribute display type per product.

You can upload files with a maximum size of 20 MB. The system rejects files larger than 20 MB. If your file exceeds this size, reduce the file size or upload a compressed version.

The approval workflow does not work as expected when the Reassign action is used on a quote. After reassignment, the approver cannot find the quote in the Waiting for Approval tab, preventing the approval process from proceeding. As a workaround, after a quote is reassigned, the new owner must retract it and resubmit it for approval so it appears in the approver’s queue and the workflow can proceed as intended.

Visibility restriction rules apply only to SAP Variant Configuration and Pricing attributes. Applying visibility restriction rules to an SAP CPQ attribute used in an SAP Variant Configuration and Pricing product is not supported.

When you use the Free Input, No Matching display type for product attributes, the value must not exceed 2,000 characters.

Quote 1.0 Limitations

When there are two or more C2 loop tags stacked vertically, each subsequent tag must have a range that includes the same number of columns or fewer than the tag immediately above it.

For Quote 1.0, during the translation of a generated document, no translation of Quote Item values (such as name or description) will occur if the dictionary selected for document generation matches the currently selected dictionary of the user generating the document.

SAP CPQ does not support automatic product version upgrades in Quote 1.0. When using the Quote 1.0 engine, upgrading to a new product version is not supported for SAP Variant Configuration and Pricing products.

Quote 2.0 Limitations

Business partner custom fields with the type Attribute don't support autocomplete attributes.

Fields like Name and Business Partner Type are always required, so their permissions cannot be changed by the administrator.

If administrators add a new involved party in the Involved parties tab, generate a document and click Send mail before adding recipients, and then add recipients afterward, an email will not be sent. Currently, this can be avoided by refreshing the page before sending the email.

Quote custom fields can’t be reordered in Fields, Calculations, Layout  Layout tab, but their order within the tab can be changed in Quotes  Custom Fields.

In Solution Design on Quote 2.0., when uploading an Excel template with an autocomplete attribute column via Excel Upload, the autocomplete attribute column should only be populated with the values corresponding to the defined Selected Searchable Columns of the autocomplete attribute. If two or more autocomplete attribute fields are defined as Selected Searchable Columns, entering either/any of the values results in the successful upload of the Excel file. if the values in the Excel file column do not correspond to the Selected Searchable Columns, the upload is not successful.

The Distribution feature does not support the automated distribution of custom calculation methods which depend on quote items, so manual distribution action should be taken each time quote items are changed.

The Quote Teams functionality is limited only to the Solution Design feature. It cannot be used apart from Solution Design.

In the Solution Design structure, only quote item custom fields are available whereas system columns are not supported.

When creating a section calculation, only current section row fields are available in the scripting, so it is not possible to create a script with a logic that would iterate through section items.

The system does not allow creating two children sections with the same name.

The system prevents updating or adding new sections to Solution Design structure via Excel upload once they are initially created with the UI Builder or uploaded via Excel.

The icons in the Allocate Item column on a quote are not properly aligned once sections are added in the Solution Design tab.

Users can import Excel files with date quote item custom fields in the Solution Design tab if the date format matches the format specified in the User Page.

If a child section in a quote has the same name as the parent section, no section from that same hierarchy can be moved into that child section.

It is not possible to have editable margin health on quote line item level.

SAP CPQ doesn't do the rounding of margin health fields in the Totals Summary (product types and item total) quote section in Quote 2.0..

There's a color discrepancy on the user interface between the margin health slider and margin health default icons.

System (List) of Configurable Products as a product display type is not available for SAP Variant Configuration products. Additionally, SAP Variant Configuration products cannot be included in system list configurations.

Comparison of Item configurations between 2 different Quotes is not supported with Quote comparison feature on SAP CPQ Quote 2.0.

System list product cannot be sub-item, and sub-item cannot be added to system list item.

Copy action is disabled for sub-items on quote.

Sub-item won't inherit quantity from parent item. Sub-item action is not supported in integration scenarios "SAP CPQ Quote to Solution Order Integration and SAP CPQ Quote to Sales Order Integration (Public/Private Cloud).

Add sub-item action is not supported in integration scenarios.

The Standard Custom Fields section can only be reordered through the Layout settings on the Quotation tab.

On all other tabs, the Standard Custom Fields section is fixed at the top of the page and cannot be repositioned.

A new filter on quotes allows users to filter quote items by product name, part number, product type, and per values of quote item custom fields. This functionality is built exclusively for the Quote 2.0 engine.

The scroll is missing on the quote summary.

The Allocate Item column is not aligned with each row in Quote 2.0..

In the General Quote Settings  General Quote Settings, the Custom Fields section can be arranged within other sections. However, custom fields cannot be ordered amongst themselves (as, for example, item columns in the Items section). The ranking of custom fields needs to be done at the custom field level in the Custom Fields part of the SAP CPQ admin.

The health margin in Quote 2.0. is not applicable to product types and totals, it is only applicable to items.

The SAP CPQ Quote 2.0. - SAP S/4HANA On-Premise integration does not support placing multilevel configurable configurations into the SAP S/4HANA Sales Order in scenarios where child products are configured in SAP CPQ. The SAP S/4HANA Sales Order will accept the multilevel configuration, but only the configuration of the root product, not the configuration of child products.

SAP CPQ will not round the Margin Health fields in the Totals Summary (Product Types and Item Total) quote section with Quote 2.0..

There's a color discrepancy (UI design) between the Margin Health slider and Margin Health default icons.

The Margin Health feature is not supported for VC products in SAP CPQ.

Translations of error messages and contract statuses are not supported SAP CPQ will show contract statuses and error messages in the language coming from ICI.

The comparison of item configurations between two different quotes is not supported by the quote comparison feature on SAP CPQ Quote 2.0..

The Promotions feature on Quote 2.0. cannot work in parallel with AI.

The system (list) of configurable products as a product display type is not available for VC products.

When there are two or more loop tags, such as C2, INVOLVED_PARTIES, and SECTIONS, listed one below the other, each tag below must have the same number of columns or fewer defined in its range than the tag above it.

Quote expiration will not consider the market time zone; quotes will expire according to the SAP CPQ server time zone.

By default, responsive templates don't support hyperlinks in the labels of quote custom item fields. If you want labels to function as hyperlinks, you need to adjust the layout customizations accordingly.

CustomField labels are not able to set in HTML Tags to display.

Accessibility

The following limitations are related to the Keyboard Support section in Accessibility for SAP CPQ.

The Teams dropdown list in the Load Existing Project/Quotation page isn't accessible by the arrow keys.

You can't close the Filters sidebar of the Products table in the Quotation tab by pressing Esc.

In he Product Types table (Quotation tab), some elements have identical IDs, so triggering one of these elements can cause the other element to be focused instead.

UI elements which can be scrolled through only after you click on them (not on initial page load) can't be navigated through with arrow keys.

Moving the focus through multiple options of the List Box Multi Selection display type attributes in Configurator doesn't work properly. With each newly selected option, the focus resets to the first option in the list.

Adding alt text to the images in the Actions menu on quotes isn’t supported, as they already have a textual representation, and their main purpose is decorative.

The Calendar (date picker) isn’t accessible via keyboard. Dates can only be entered directly via the input field.

On Teams tab, the Search Users dropdown can’t be closed by using the Escape key without closing the Add Team popup if the search input is focused. It can be closed using the Escape key only if any of the results is focused.

When editing a field in a table or other logical element group, pressing Up and Down keys moves the cursor to the beginning and the end of the field, respectively, while pressing Home and End focuses the first and the last focusable element in the table/other logical element group.

If an element has a scroll on the initial page load, you will be able to scroll that element with the arrow keys. However, if the element does not get a scroll after the viewport size changes, then that element won't be focused and you won't be able to scroll it with the arrow keys.

You cannot close the cart items filter sidebar with Escape while the Product Type field is focused.

The date-picker is not accessible; dates can only be entered directly via the input field.

SAP CPQ will not support accessibility for the setup section of SAP CPQ.

Integrations

The information below describes the limitations of the SAP CPQ integration with other applications for the current SAP CPQ release.

General

The timeout for an API request sent from SAP CPQ to an external system is 1min 40s (100s).

Attribute ID values arriving from external systems, that are subsequently converted to system IDs in SAP CPQ, are not processed as case sensitive in SAP CPQ. If multiple system IDs are identical in every way except for capitalization, they will not function properly.

SAP ERP Integration Limitations

Limitations of the SAP CPQ integration with SAP ERP are available in the SAP Note 2711831 .

Standard integration packages for SAP ERP 6.0 (ECC) are offered with Quote 1.0. Integration packages with S/4HANA are provided for Quote 2.0 exclusively.

SAP Variant Configuration and Pricing Integration Limitations

Price calculation based on weight or volume is not supported.

During configuration, surcharges from variant conditions are shown. However, this only works for one condition type with variant conditions. If there are multiple condition types with variant conditions, not all of them will be shown. This is a limitation of the user interface; the total price will nevertheless be correct.

In Quote 1.0., when an item is added to the quote and later replicated to a back-end system, only the total net price is available out-of-the-box. All pricing conditions (including variant conditions) can be mapped to quote item custom columns via project-specific extensions (see Map Pricing Response to Quote Columns). For the replication to the back-end system, the custom quote columns must be mapped accordingly in the integration flows in SAP Cloud Integration. However, in Quote 2.0., it is possible to map pricing conditions to quote fields using the standard pricing procedure mapping feature.

Group conditions are currently not supported and will be ignored during the calculation.

Prices in the Catalog for configurable products only show the base price, ignoring possible variant conditions of the default configuration.

Export/Import and Deploy/Send Changes features can’t be used to update the pricing mechanism from Pricebook Lookup to Variant Pricing.

Promotions are not supported in scenarios with back-end/Variant Configuration materials.

Quotes with configured materials containing characteristics with the type Date can’t be synchronized with a back-end system.

The Quick Config action on the quote isn't supported for Variant Configuration materials.

The Assets table for Renewal Administration in SAP CPQ does not support Variant Configuration materials

The Deploy/Send Changes feature doesn’t support back-end materials when it comes to Product Master migration from one SAP CPQ environment to another.

Product aliases aren’t supported for products synchronized from a back-end system.

The process of knowledge base synchronization ignores empty characteristic values.

Adding products to the quote directly from the Catalog or using the Add Items option on the quote isn't supported for configurable products synchronized from a back-end system. Such products need to be configured before they are added to the quote.

The unit of measure isn't supported on attribute level, so it can't be synchronized to SAP CPQ attributes. As a workaround, you can include the unit of measure in the display value and then resynchronize the attribute.

If a product synchronized from the back end belongs to two sub-categories, when searched in the parent category, it will appear twice, the price may not display in the Catalog, and if it is a simple product, it won't be possible to add it to the quote.

Standard SAP CPQ attributes can't be displayed out of the box in the Responder on Variant Configuration products which use the pricing mechanism Variant Pricing. The only way to display standard attributes in the Responder for such products is via customization.

Guided selling isn't supported from products synchronized from the back office.

Preselected values are currently not supported for Variant Configuration products, meaning that the value will be preselected, but SAP Variant Configuration and Pricing won't be notified of this change.

For products synchronized from back end as a Parent/Child, if the Display type is changed to SAP CPQ display type (example, Parent/Child to Configurable), it won't be possible to do the configuration of such a product.

In SAP CPQ, if you select Configurable Product as the display type, you cannot add Variant priced product container rows to configurable products. Only Parent/Child products support this feature.

The Add button is disabled for some products, while the action exists on the Bulk Validation page.

In SAP CPQ, there is no relation between the states Inconsistent and Incomplete. Attributes involved in a conflict are marked in the configuration summary.

A characteristic will not be displayed in the Configurator view if it contains possible values that all have the selectable flag set to False.

SAP CPQ doesn't support mixing interval types (for example, type 1 and type 3) for the same characteristic across general and product-specific settings.

The Upgrade to New Product Version action is not supported for Variant Configuration (VC) products in Quote 1.0. If you change the quote effective date and use this action, the VC products will not update to the latest version.

You can only get prices from the Variant Configuration and Pricing Service (CPS) if all units of measure are in the ISO format.

Dynamic attributes coming from SAP Variant Configuration and Pricing that are marked as line items are forbidden at runtime. The system will display an error message, as SAP CPQ does not know the possible values of such attributes in advance.

The Variant Configuration integration is supported on both quote engines. However, adding nested Variant Configuration products (bundles) to the quote is supported only on Quote 2.0.

Using pricing procedures for interactive quote pricing with Configuration and Pricing Services RESTful APIs is only available for Quote 2.0.

If a product's configuration or pricing type is Variant, it can't reference other products through attribute values. If a product's configuration and pricing type aren't Variant, it can reference other products through its attribute values. However, the referenced products must not have the Variant configuration type or Variant pricing type.

To prevent configuration and pricing issues, the Copy and Add Product Alias actions are not available in Setup for products synced from Backoffice.

SAP Variant Configuration and Pricing Integration Limitations (Quote 2.0.)

It's not possible to combine conditions with different calculation types. The calculation type of the first active condition is always taken.

You can't use more than one pricing procedure on the same quote.

SAP Variant Configuration and Pricing recommends that you restrict the size of a quote to 100 items. For good performance of the Pricing service, it is required to find a good balance between the number of items and the complexity of the pricing procedure.

Currently, if a pricing procedure uses the same pricing condition for a recurring price for different order item types (subscription and service contract), it's not possible to map it to both order item types, but only to one (either the subscription or the service contract). The workaround is to create an additional pricing condition and use it for the other order item type.

In SAP CPQ, there is no relation between the states Inconsistent and Incomplete. Attributes involved in a conflict are marked in the configuration summary.

Mixing conditions with different calculation types is not possible. The calculation type of the first active condition is always used.

External Conditions and Alternate Product Unit are not supported.

SAP S/4HANA Integration Limitations

Limitations and known issues of the SAP CPQ Quote 2.0. integration with SAP Billing and Revenue Innovation Management are available in the SAP Note 3048492 . This note describes the limitation and known issues on the SAP S/4HANA side.

When replicating business partners from SAP S/4HANA (via the SAP S4 Business Partner Replicate to SAP CPQ package in SAP Cloud Integration), it is currently not possible to replicate the business partner’s role and the sales area because SAP CPQ doesn’t support them.

When SAP S/4HANA is used as the back end, the entire scenario doesn't work when multiple system use the same ID field for mapping business partners.

The integration of SAP S/4HANA On Premise with Quote 2.0 doesn't support the bundling capabilities of SAP CPQ. If a dummy product is replicated from SAP S/4HANA to SAP CPQ, and you add a container attribute containing SAP S/4HANA Sales products to the dummy product, that parent-child product structure won't be properly replicated from the SAP CPQ quote to the SAP S/4HANA Sales Order.

The integration of SAP S/4HANA On Premise with Quote 2.0. doesn't support discounting BOM items on the SAP CPQ quote. Only the main BOM item can be discounted. If you try to discount BOM line items, the Sales Order creates BOM items without applying discounts.

The integration of SAP S/4HANA On Premise with Quote 2.0. currently doesn't support the replication of SAP CPQ quote items to the SAP S/4HANA Sales Order if the item discount percent or discount amount have more than 3 decimal places. Those fields must be set to 3 decimal places in SAP CPQ so that the SAP CPQ items can be successfully replicated to the SAP S/4HANA Sales Order.

Adding SAP CPQ attributes to SAP S/4HANA Subscription or Service Contract products in SAP CPQ is not supported in the integration with SAP Billing and Revenue Innovation Management.

In the integration with SAP S/4HANA Cloud, when a quote is created directly in SAP CPQ, a contact person can't be used on the quote as it can't be replicated to the SAP S/4HANA sales order.

When two or more identical values associated with different units are imported to the same contract duration attribute, the incorrect units may be assigned to values once the import is complete. This behavior applies to all import methods.

When two or more identical values associated with different billing periods are imported to the same billing cycle attribute, the incorrect billing periods may be assigned to values once the import is complete. This behavior applies to all import methods.

In the Quote 2.0. integration with SAP S/4HANA Sales Order, only a limited amount of configurable quote items including variant conditions can be calculated by the Sales Order. See SAP S/4HANA 2308 SAP Note 3293759 .

Default discount is not applicable automatically for Variant Configuration products when using Document Pricing. It can be done by triggering reconfigure and repricing or scripting after the item is added to the quote. To define automatic default discount, please refer, Pricing Procedure.

SAP CPQ and SAP Billing and Revenue Innovation Management integration for Multilevel Bundle scenario only supports simple products of Sales and Service Contract product types. Configurable Sales and configurable Service Contract product types are not supported for Multilevel products and Bundle scenario.

Only Subscription product types are supported in SAP CPQ and SAP Billing and Revenue Innovation Management integration for Multilevel Bundle scenario, and Sales and Service Contract products are not supported.

The Business Partner feature will only work on the Quote 2.0. engine.

The state is mandatory on the SAP CPQ side when the USA is selected as the country, while it is not on SAP S/4HANA.

Business partner custom fields cannot be used as search criteria on Quote.

During the configuration, there is a limitation on statistical condition types. SAP CPQ filters them, and they are not included in stateless pricing calculations (configuration).

SAP Billing and Revenue Innovation Management Integration

The same Table Class (in Convergent Charging) name should not be used for both Range Tables and Mapping Tables, as this causes issues in determining the correct Table instance when both are added to a single product.

There is no conversion of the date-time in the mapping table columns. Data are received and stored in SAP CPQ in the same format as received from Convergent Charging, without any alteration or conversion. The same applies when sending data back to Convergent Charging from SAP CPQ. However, when data are loaded from the SAP CPQ database to be displayed to an end user within a SAP CPQ quote, date-time columns are converted into the user's format. There is no time zone conversion.

When importing pricing tables using Excel files, the SAP CPQ application enforces a hard limit on the maximum request size, which is set to 20MB. This means that end users cannot upload Excel files that exceed this limit.

In a scenario where a Sales Rep creates a Redefined table but does not apply any modifications, after submitting a quote, SAP CPQ will retain the Redefined table in the quote and at the item level. However, no data is sent to Convergent Charging, and no specific tables are created. This applies when the Delta approach is used.

When the Delta approach is turned off, SAP CPQ does not perform filtering, and the entire content of the Redefined table is sent to Convergent Charging, even if there are no changes.

If a Sales Rep adds such a subscription contract as an asset to a SAP CPQ quote, only the Default table will be shown when the Delta approach is used (since no Redefined table is created in Convergent Charging). However, when the Delta approach is turned off, the Sales Rep will see both the Default and Redefined tables.

Once a product is added to a quote, if there is a range table to be loaded and displayed, SAP CPQ uses the Quote Effective Date to determine which version to load. A range table can have multiple validity periods, each with different content. SAP CPQ does not load all periods and their content; instead, it loads only the period and corresponding content that matches the Quote Effective Date, as well as all future ranges. Ranges that are in the past (and not applicable) are not loaded. However, during export from SAP CPQ, the full dataset will be exported, including past, current, and future range data.

In SAP CPQ - SAP Billing and Revenue Innovation Management Integration, for Simple Recurring Subscription and Tiered Pricing scenarios, when a Change Process scenario is launched (that is, an existing asset is added to the Products section), SAP CPQ loads pricing information based on the item effective date in order to preserve and display the correct information. However, in the case of a Usage-Based Pricing scenario, when a Change Process scenario is activated and an asset is added to the Products section, SAP CPQ loads pricing information from the range tables based on the quote effective date, not the item effective date.

Once a SAP CPQ quote is submitted, there are two distinct integration patterns regarding the use of pricing tables: replacement of the entire default pricing table, or replacement/use of only the changed information/rows (the "delta" approach). In the case of the second approach, if a Sales Rep creates a redefined table for an item in a quote, at least one row must be changed or at least one new row must be added in order for the new/redefined table to be stored in the back-end system (Convergent Charging). If there is no change in the redefined pricing table compared to the original/default pricing table, it will not be saved in the back-end system (Convergent Charging).

Once a SAP CPQ quote is submitted to SAP S/4HANA, a solution quote will be created based on it. However, solution quote processing can fail for various reasons. In such cases, the SAP CPQ quote will be transitioned to the appropriate status (Order Failed). If this happens, it is assumed that a Back Office agent will resolve the issue on the SAP S/4HANA side so that the solution quote can be processed successfully.

A scenario in which a Sales Rep changes and fixes items in the SAP CPQ quote (for which a solution quote has already been created in SAP S/4HANA) and then resubmits the modified SAP CPQ quote to SAP S/4HANA to update the existing solution quotation is not supported. The main reason is that a SAP CPQ quote is checked, approved, and accepted both internally and by the customer. Any changes would diverge from what was originally negotiated, agreed upon, and accepted, and on which legally binding documents were generated. Therefore, update flows (which exist in the IFlows enabling this integration) will not be adjusted to support this behavior.

During any change process execution, SAP CPQ will load all redefined tables for an asset. If not all redefined tables are loaded, SAP CPQ will prevent a user from creating a copy of a quote with incomplete data. However, a user will still be able to create a new revision of a quote even if not all redefined tables are fully loaded.

During any change process execution, SAP CPQ will load all redefined tables for an asset. At the moment, due to technological limitations, there will be no push notification from the server to indicate that all data has been loaded, and the refresh icon will not function. This is expected to be resolved once a technological solution is in place.

The ability to display only data from the redefined table, or to show data from the redefined table merged with data from the default table (using the "Eye" icon), is available only for mapping tables, not for range tables.

Change Process Scenario Limitations (SAP Billing and Revenue Innovation Management Integration)

Renewals and Change Process scenarios are only supported for the integration of Quote 2.0. and SAP Billing and Revenue Innovation Management.

Contracts which do not have an end date set ("evergreen" contracts) aren't supported.

The activation date (TimeSliceStartDate) for the contract item must be executed in SAP S/4HANA.

When processing of the change process fails on the SAP S/4HANA side, the user in SAP CPQ isn't able to recover directly from the quote.

The Asset table isn't refreshed after deleting an item.

The after sales process does not support changes to Subscription Contract Documents created from multi-level products sent from SAP CPQ.

Sales product type and Service Contract (order item type) cannot be included in multi-level products.

Subscription contract documents, maintained for phased changes in SAP S/4HANA, will not be applicable for the change process in SAP CPQ and SAP Billing and Revenue Innovation Management Integration.

In SAP CPQ Quote when simple Product is swapped with configurable Product then only the default configuration will be considered and if any change in configuration is present it will be ignored in SAP S/4HANA.

The effective date change will now initiate the deletion of both Default and Redefined tables for SAP Billing and Revenue Innovation Management Integration Items with Tiered pricing.

In a multi-level subscription contract when a child has expired, that type of contract is not supported in SAP CPQ.

In SAP CPQ Quote, when a simple Product is replaced with a configurable Product, only the default configuration will be taken into account. If there are any changes in the configuration, they will be disregarded in SAP S/4HANA.

Bundle Product cannot be included in an existing contract.

SAP Commerce Cloud Integration Limitations

It is not possible to send the quote with the generated document proposal to SAP Commerce Cloud from SAP CPQ the first time the quote is created in Quote 2.0.. This is currently possible only in the following cycles of negotiation, when the SAP Commerce Cloud returns the quote to SAP CPQ and a new revision is created.

Subitems will not be displayed on Commerce Quote when items are sent from SAP CPQ.

Comments on subitems in SAP CPQ will not be visible on the SAP Commerce quote and will be lost in SAP CPQ if the quote is edited in Commerce.

Promotions are not supported.

Comments sent from SAP Commerce Cloud to SAP CPQ currently have the timestamp set to the time when they arrive at SAP CPQ, not the time they were created. The same applies to a new quote revision.

When editing a quote in SAP Commerce Cloud, the order of items changes. Additionally, the order of items will change once again when they are sent back to SAP CPQ.

Using optional items in SAP CPQ is not supported.

SAP Sales Cloud Integration Limitations

Limitations of the SAP CPQ Quote 1.0. integration with SAP Sales Cloud are available in the SAP Note 2787253 .

Limitations of the SAP CPQ Quote 2.0. integration with SAP Sales Cloud are available in the SAP Note 3112679  .

Landing to SAP CPQ from SAP Sales Cloud and going to the User Page results in quote termination. This can currently be resolved by reloading the SAP Sales Cloud quote (refreshing the browser) before going to the Catalog.

Delivery Priority, Incoterms and Payment Terms aren't a part of the standard replication from SAP Sales Cloud to SAP CPQ.

Tax replication to SAP Sales Cloud isn't supported.

No standard address selection is available in SAP CPQ, the document address isn't replicated to SAP Sales Cloud.

The integration of SAP CPQ with SAP Sales Cloud isn't supported on the SAP Sales Cloud mobile application.

Time zones aren't recognized in SAP CPQ.

The replication of configuration details from the SAP CPQ quote to SAP Sales Cloud isn't supported.

It is currently not possible to set the value of autocomplete quote item custom fields in SAP CPQ from SAP Sales Cloud.

Quote 1.0. does not support rounding setup for each currency.

The deletion of SAP CPQ Quotes is not supported with SAP Sales Cloud integration.

Some labels in SAP Sales Cloud do not match those in SAP CPQ due to legacy issues in both applications.

Effective Date -> Pricing Date

Bill To ->

Email -> E-Mail

Ship To -> Ship-To

Requested delivery Date -> Requested Date

Account Id -> Account ID

Quote Expiration Date -> Valid To

Replication of configurable products from SAP Sales Cloud Quote to SAP CPQ Quote is not supported.

The length of the product description in the SAP CPQ quote is unlimited, but it is limited to 40 characters in SAP Sales Cloud. Hence, incoming messages that update the SAP Sales Cloud quote will fail if the product description exceeds 40 characters in SAP CPQ.

The contact person's address and communication data are not replicated to the SAP CPQ

The placement of sales orders to the back end ERP system (SAP S/4HANA On-Premise, SAP S/4HANA Cloud) is officially not supported by the standard.

Sales order creation in Prospect scenario is not supported.

SAP CXAI Integration Limitations

In the integration with SAP CXAI, the CXAI charts (Price Insights and Whitespace Analysis) aren't available when using the integration setup introduced in the 2205 release. With the previous version, they were available via SAC.

SAP CPQ Quote 2.0. integration with Solution Order Limitations

Multi-level products and subscription products are not supported in SAP CPQ Quote 2.0. Integration with SAP S/4HANA Cloud Solution Order.

SAP CPQ Quote 2.0. SAP S/4HANA integration with SAP Billing and Revenue Innovation Management Limitations

SAP CPQ Quote 2.0. SAP S/4HANA integration with SAP Billing and Revenue Innovation Management Integration: Filtering in the iFlow (integration flow) for item types—Optional, Alternative, and Variant—will not be supported for multi-level products. For more details, see SAP S/4HANA Bundle Multi-Level Product.

Subscription Billing

The Billing Cycle on the Rate Plan Template needs to be fixed, as it is not currently supported as a parameter.

SAP CPQ Quote 2.0. - SAP S/4HANA Sales Order Integration

Filtering in iflow (integration flow) for Item Types - Optional, Alternative and Variant will not be supported for Multi-level Sales Bills of Material (BOM).

SAP CPQ Quote 2.0. - SAP S/4HANA Cloud with Sales Orders Integration

Filtering in iFlow (Integration Flow) for item types—Optional, Alternative, and Variant — will not be supported for Multi-level Sales BOMs.

On this page
General Limitations
Quote 1.0 Limitations
Quote 2.0 Limitations
Accessibility
Integrations
Yes
No