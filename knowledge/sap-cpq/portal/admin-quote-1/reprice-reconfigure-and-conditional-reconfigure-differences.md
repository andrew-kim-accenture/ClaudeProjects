# Reprice, Reconfigure, and Conditional Reconfigure - Differences | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/8b6d6897d9084fa7a720eb6681a33559.html#related-information
**Crawled:** 2026-04-16

## Content

SAP CPQ Setup and Administration Guide for Quote 1.0
Provide feedback on our search

Loading Table of Contents…
Reprice, Reconfigure, and Conditional Reconfigure - Differences

This page describes the Reprice, Reconfigure, and Conditional Reconfigure actions and explains when each of these should be used.

Reprice Action

This action recalculates only the items whose values are changed in a quote, but only when the changes are made in the quote (for example, when a user changes the value of a quote item custom field). If there are items whose values are being calculated from external sources (for example, from a custom table), the Reprice action doesn’t recalculate the values of those items after the external value is changed.

The Reprice action works with a snapshot of product data captured in the moment when the product was added to the quote. Triggering this action doesn’t reload the product in the quote like the Reconfigure action does.

Reconfigure Action

This action recalculates all items in a quote and considers all the changes that affect the values on the quote (for example, if list price is calculated based on an amount in a custom table, you should trigger the Reconfigure action after changing the value in the custom table so that the list price is recalculated in the quote). With this action, products are reloaded in the quote, so all changes are applied, unlike with the Reprice action. The Reconfigure action applies to all item data, not just the List Price.

Note

The Always Refresh List Price on Reconfigure parameter determines whether the list price is recalculated every time Reconfigure is triggered or not.

Conditional Reconfigure

With the Conditional Reconfigure action, products are also reloaded in the quote, just like with the Reconfigure action. However, products are reconfigured only if the product version has been changed after the product was added to the quote.

Product version can be set in the Product Setup Wizard for each product. If Product Version is empty, products are always reconfigured. If it's not empty, product version is compared to the one saved in the quote item to determine if Conditional Reconfigure should reconfigure that item or not.

There’s a flag in the workflow, next to Automatic Reconfigure, called Conditional Reconfigure, called . This is available in the workflow for all actions where , called Automatic Reconfigure is available. When this flag is set and action is executed in the workflow, same logic is applied as in action Conditional Reconfigure: iterating through all quote items, compare product versions and reconfigure item and save current product version if product versions are different.

Related Information
Workflow Permissions
Pricing/Calculations
On this page
Reprice Action
Reconfigure Action
Conditional Reconfigure
Related Information
Yes
No