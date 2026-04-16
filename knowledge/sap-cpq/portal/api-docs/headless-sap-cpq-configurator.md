# Headless SAP CPQ Configurator | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/cc39e2156fb945a9a07026931d7a9445.html#non-functional-requirements
**Crawled:** 2026-04-16

## Content

SAP CPQ API Documentation
Provide feedback on our search

Loading Table of Contents…
Headless SAP CPQ Configurator

Headless CPQ exposes the SAP CPQ's configuration and pricing engine via a public Configurations V2 API. This allows any external user interface(UI), such as eCommerce platform, dealer or reseller portal, self‑service websites, and mobile applications, to integrate and utilize the same configuration logic and prices modeled in SAP CPQ without logging into the system. By enabling omnichannel product configuration that is decoupled from the SAP CPQ’s native user interface, this API ensures a consistent and unified source of truth for products, rules, and pricing across all customer touchpoints.

Business Value and Outcomes
Configuration V2 API ensures the following outcomes:

Omnichannel parity: A single product, rules, and pricing model is used across sales representatives, partners, and the web.

Faster digital launches: External user interfaces only display information. SAP CPQ remains the central system for rules and pricing

Lower risk and total cost of ownership: There is no rule duplication, fewer unique adapters are needed, compliance is consistent.

Higher conversion: Real-time pricing and validations reduce friction and support guided choices.

Partner scale: The catalog and configuration are safely exposed to dealer and distributor portals.

Primary Use Cases

3rd‑party eCommerce: Both anonymous and logged‑in shoppers who can configure product bundles. The system provides real‑time updates on valid options and net pricing within the shopping cart, enhancing the shopping experience by ensuring accuracy and transparency in pricing.

Reseller/Dealer Portal: Partners who need to configure customer‑specific product variants. It takes into account the market and pricebook context, allowing resellers and dealers to offer tailored solutions to their customers while maintaining consistency with pricing strategies.

Self‑Service Web/Mobile: Enterprise buyers can use this platform to pre‑configure complex assets on their own. This self‑service capability empowers buyers to explore and define their needs independently, with the option to escalate to sales for further assistance or finalization of the purchase.

Embedded Apps: Kiosk and field applications that require SAP CPQ rules and pricing functionalities without the need for a full SAP CPQ user interface. It allows for seamless integration of SAP CPQ capabilities into various applications, providing flexibility and efficiency in environments where a traditional SAP CPQ UI is not feasible.

Note

The pricing and rules framework is influenced by several key components, including market and pricebook, currency and effective date, sales area, involved parties, and extension fields.

Capabilities
With Configurations V2 API, you can:

Create, read, update, copy, and delete configuration transactions.

Evaluate rules and pricing per interaction. Return configuration state, including root and child products, attributes, values, containers, messages, and pricing breakdown.

Support context‑aware pricing, including market, pricebook, currency, effective date, involved parties, extension fields, and sales area.

Enable multi‑level configuration, including container operations such as adding, copying, deleting rows, setting column values, and updating quantity value.

Provide localization via the Accept-Language header. Offer partial responses via OData.

Manipulate attribute selections using system IDs, facilitating seamless integration across ERP applications.

Not supported:

Quote document generation and SAP CPQ UI rendering are not included. Use Quote APIs if you need a sales-assisted quote before ordering.

SAP CPQ does not manage checkout or order processes in external commerce. You should connect your eCommerce system to ERP or SAP CPQ Quote APIs for handoff.

Note

The API covers both simple stock-keeping units and configurable items. It supports subscription and services modeling. Configuration can later be attached to an SAP CPQ quote via Quote APIs if sales assistance is required.

End-to-End (E2E) Flows
Anonymous eCommerce (configure → order):

The user selects a product in the shop.

The shop calls SAP CPQ Create Configuration call with the product and context parameters (Market, Pricebook, Currency, Effective Date, Business Partners).

Each attribute change triggers a Patch Configuration call. SAP CPQ returns the updated state, including valid values, rule messages, and pricing deltas.

When configuration is complete, the shop retrieves the final configuration and places the order in ERP (or optionally creates an SAP CPQ Quote via Quote APIs if a sales step is required).

Dealer Portal (configure → sales-assist → quote/order):

The dealer configures the product using their pricebook context.

The portal stores the ConfigurationId for later reference

A sales representative loads the configuration into an SAP CPQ quote (via Quote APIs), applies approvals and terms, and converts it into an order.

API Surface

Create configuration: POST /api/configuration/v2/configurations

Inputs:ProductId or ProductSystemId (one required), Context with Market and Pricebook (required), EffectiveDate, Currency, SalesArea, InvolvedParties, ExtensionFields (optional).

Returns: ConfigurationId for subsequent operations.

Here's an abbreviated example of a 'Create configuration' request:
Code Sample

Get configuration: GET /api/configuration/v2/configurations/{configurationId}

Supports OData (pricingDetails, tabs, attributes, values, description, messages, containers) and Accept-Language for localization.

Here's an example of a 'Get configuration' request:
Code Sample

Patch configuration: PATCH /.../configurations/{configurationId}

Used for: setting context and changing attributes/values/quantities.

Here's an example of a 'Patch configuration' request:
Code Sample

Delete configuration: DELETE /.../configurations/{configurationId}

Note: Not allowed if configuration is attached to a quote item.

Get configuration context: GET /.../configurations/{id}/configurationContext

Copy configuration: POST /.../configurations/{id}/copy supports optional new context, uses an optimized copy path when the context is unchanged (no rule execution).

Here's an example of a 'Copy configuration' request:
Code Sample

Container & Attribute Operations (multi-level): add, copy, or delete rows in containers, change column values, modify attribute values or selections, update value quantities.

Key validations & behaviors

Provide either ProductId or ProductSystemId (ProductSystemId takes precedence if both are present).

Context is mandatory, MarketCode is required, PricebookCode must match the Market.

EffectiveDate is optional (set to now by default, yyyy-MM-dd format is used when a date is provided).

ExtensionFields supports DateTime, Attribute Reference, Autocomplete, and Free‑form semantics. Name must match the modeled fields.

InvolvedParties can be upserted via ExternalId (merge semantics) when provided.

Non-Functional Requirements

Performance & Scale: Guardrail and throttle policies, test burst scenarios typical for web events. Tenant-level capacity considerations are documented with Operations .

Reliability: Idempotent operations where applicable, safe retries supported from external UIs.

Security: AuthN/AuthZ via OAuth2, scope-based access control, PII hygiene for Involved Parties.

Observability: Request IDs, structured logging, per-tenant counters for the selected billing metric.

Compatibility: Version endpoints (e.g., /v2) and payloads, prefer additive, non-breaking changes.

On this page
Business Value and Outcomes
Primary Use Cases
Capabilities
End-to-End (E2E) Flows
API Surface
Non-Functional Requirements
Yes
No