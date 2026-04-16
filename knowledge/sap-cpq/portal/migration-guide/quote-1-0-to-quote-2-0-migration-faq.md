# Quote 1.0 to Quote 2.0 Migration FAQ | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/6d41da9c405e44349a9f99eb69d22d2b/999fdf04505a4278ad4e5a83019afd8b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Migration Guide to Quote 2.0 EngineVersion: 2603English
Provide feedback on our search

	
SAP CPQ Migration Guide to Quote 2.0 Engine
	
About Quote 2.0 - Benefits and Compatibility
	
Quote 2.0 Migration Process
	
Migration Effort Estimate
	
Support Procedure for Migration to Quote 2.0
	
Quote 1.0 to Quote 2.0 Migration FAQ
Quote 1.0 to Quote 2.0 Migration FAQ

This page contains a list of common questions related to Quote 2.0 and the migration from Quote 1.0 to Quote 2.0.

What are benefits of Quote 2.0 compared to Quote 1.0?

Quote 2.0 enhances performance and scalability compared to the Quote 1.0 engine. It provides a solid foundation for future improvements and features, enabling streamlined implementation and a clean system with only relevant features.

Can I use both Quote 2.0 and Quote 1.0 engines simultaneously on the same tenant?

You need to choose one engine to use at a time.

How do I start using Quote 2.0?

The SAP CPQ Support team can activate it at your request. After that, there will be a number of steps to adjust your system to use it in production again. Before you activate Quote 2.0, please review SAP CPQ Migration Guide to Quote 2.0 Engine to assess the scope and effort needed to adopt Quote 2.0 and migrate to a new engine.

Once Quote 2.0 is activated, is everything migrated and ready to use without any additional activities from our side?

You should treat the migration to Quote 2.0 as an implementation project. While some functionalities remain the same as in Quote 1.0, there are significant differences in data models. You need to understand these differences to work effectively with Quote 2.0.

What are the activities I need to undertake in order to migrate from Quote 1.0 to Quote 2.0?

Please review Quote 2.0 Migration Process

Do we need to start from scratch and set up SAP CPQ again to start using Quote 2.0?

No. Although some features may require a significant overhaul, some of them require little to no revision at all. Please review Quote 1.0 vs Quote 2.0 - Feature Differences

Can we still access the old Quotes (created on Quote 1.0) once we migrate to Quote 2.0?

Yes, you can migrate your old quotes to the new engine using Quote Migration Tool.
Note

Please note that you need to meet certain prerequisites to use the migration tool, which are described within the tool itself.

In the prerequisites for using migration tool, it is stated that the process should start with copying of existing Quote 1.0 tenant. Why is this step needed and can it be avoided?

To use the migration tool, ensure that all database IDs for Quote-related entities (such as products, attributes, users, and configurations) are identical between Quote 1.0 and Quote 2.0. You can achieve this by starting the process with a copy of the existing Quote 1.0 tenant to a dedicated tenant for implementing Quote 2.0.

We would like to completely rebuild our Quote 1.0 model during migration as current implementation is not optimal, and we need to start from scratch. Can we still use migration tool?

Due to the prerequisites described earlier, you can't use the migration tool. We recommend starting with a new CPQ tenant for implementing Quote 2.0.

Can I test Quote 2.0?

Quote 2.0 can be turned on in your Sandbox environment. In order to do this, please contact SAP support.
Note

Our suggestion is to review the document SAP CPQ Migration Guide to Quote 2.0 Engine prior to turning on Quote 2.0.

Will the integrations still work after I migrate to Quote 2.0?

There may be differences in the way integrations work on Quote 1.0 and Quote 2.0. Please review Quote 1.0 vs Quote 2.0 - Feature Differences

Where can I find a comparative overview of features in Quote 1.0 and Quote 2.0?

This list is available in Quote 1.0 vs Quote 2.0 - Feature Differences

Will my existing document generation templates still work after the migration?

You can expect your document generation templates to remain unchanged unless they contain tags that are outdated in Quote 2.0, such as <*TOTALAMOUNT*>. Please review the following document CTX Tags - Quote 1.0 vs Quote 2.0.

Do you plan to keep enhancing Quote 1.0?

We will not enhance Quote 1.0 further. Instead, you can look forward to new features in Quote 2.0.

When do you plan to deprecate Quote 1.0?

There are plans to eventually deprecate Quote 1.0, but no specific date has been set. It will definitely remain available until at least 2030.

Is the user interface different in Quote 2.0?

The user interface remains the same as in Quote 1.0.

Are markets and currencies supported in Quote 2.0?

Yes.

How does Quote 2.0 store money amounts in the DB?

Quote 2.0 stores amounts in the selected quote currency and does not perform currency conversion when you load an existing quote. If you build reports, you can take the value from the database. However, if you build reports for quotes in different currencies, you need to adjust them in the report code.

How does Quote 2.0 save the changes I make?

The quote saves automatically after each action you perform on quote item custom fields. To ensure changes are saved, press Enter on your keyboard or click on a different field. If you change the value of a quote item custom field without pressing Enter or changing the focus, you can click the Save Quote action.

How does SAP CPQ calculate totals in Quote 2.0?

SAP CPQ tracks the changes you make as you modify the quote, calculates delta values and adds them to totals.

Can I enter a value as a quote total and have it applied as a discount to the line items?

Yes Quote 2.0 supports reverse calculations.

Related Information
About Quote 2.0 - Benefits and Compatibility
Quote 1.0 vs Quote 2.0 - Feature Differences
Quote 2.0 Migration Process
Yes
No