# Pricing Procedure | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/f21989f09f494ce1a537942ae2523dc6/aafa019a895249c981f5c5474ee34da4.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

Integration with Sales Orders in SAP S/4HANA CloudVersion: 2603English
Provide feedback on our search

	
Purpose
	
System Requirements
	
Prerequisites
	
Configuration in SAP CPQ
	
Configuration in SAP S/4HANA Cloud


	
Maintaining Trust between SAP Cloud Integration (SCI) and SAP S/4HANA Cloud
	
Configuring SAP Master Data Integration for Business Partners Replication
	
Create Communication User
	
Create Communication System
	
Create Communication Arrangements
	
Pricing


	
Condition Types
	
Pricing Procedure
	
Pricing Procedure Determination
	
SAP Cloud Integration Configuration
	
Data Replication
	
Master Data
Pricing Procedure

Learn how to set up pricing procedures for an integration between SAP CPQ and sales orders in SAP S/4HANA Cloud.

After having created the condition types, you can create pricing procedures using these condition types. In the pricing procedures, you define which condition types are to be taken into account and in which sequence. During pricing, the system automatically determines which pricing procedure is valid for a sales order. The system then takes the condition types contained in the pricing procedure into account, one after the other. If you want to use one-time prices and cumulated discounts, you must create your own pricing procedures.

The integration between SAP CPQ and sales orders in SAP S/4HANA Cloud uses document pricing (that is, the determined prices are applied to the entire quote). You can define mappings between the SAP CPQ quote or custom fields and the price conditions in the pricing procedure in SAP S/4HANA Cloud. In this scenario, you must create the quote before you can add a product. This allows the system to determine the pricing procedure in advance, so that SAP Variant Configuration and Pricing can do the necessary calculations. Once you add, delete, or change items in the SAP CPQ quote, SAP Variant Configuration and Pricing is called and all mapped conditions are sent.

In your configuration environment, use the search function to open the following activity: Set Pricing Procedures.

Choose Configure and then New Entries to create the necessary pricing procedures.

Create a new procedure (for example, ZCPQDP) and add a description (for example, CPQ Sales Order for Doc Prc).

Select your procedure and choose Procedures - Control Data.

Example

The following settings illustrate how you can set up a pricing procedure.

Pricing Procedure

Step Number

	

Counter

	

Condition Type

	

Description

	

From Step

	

To Step

	

Manual

	

Required

	

Statistics

	

Relevant for Account Determination

	

Print Type

	

Subtotal

	

Requirement

	

Alt. Calc. Cndn Amnt

	

Alt. Cndn Base Value

	

Account Key

	

Accruals

	

Access Level




10

	

0

	

PCO1

	

Actual Costs

	

0

	

0

	

X

	 	 	 	 	

B

	

2

	

0

	

0

	

ERL

	 	 


20

	

0

	

PPR0

	

Price

	

0

	

0

	 	

X

	 	 	 	 	

2

	

0

	

0

	

ERL

	 	 


30

	

0

	

PVA0

	

Variant Price

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

ERL

	 	 


35

	

0

	

PVA1

	

Variant Price (%)

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

ERL

	 	 


60

	

0

	

PMP0

	

Manual Price

	

0

	

0

	

X

	 	 	 	 	 	

2

	

0

	

0

	

ERL

	 	 


90

	

0

	 	

Subtotal Variant Price

	

30

	

35

	 	 	 	 	 	

5

	

0

	

0

	

0

	 	 	 


100

	

0

	 	

Gross Value

	

10

	

80

	 	 	 	 	

a

	

1

	

0

	

2

	

0

	 	 	 


120

	

0

	

DPG1

	

Cust. Grp / Material

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


130

	

0

	

DCM1

	

Customer/Material

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


135

	

0

	

DCH1

	

Customer Hierarchy

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


140

	

0

	

DC01

	

Division / Customer

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


145

	

0

	

YK07

	

Customer Discount

	

0

	

0

	 	 	 	 	

b

	 	

2

	

0

	

0

	

YB2

	 	 


150

	

0

	

DM01

	

Material

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB1

	 	 


160

	

0

	

DPG2

	

Customer Price Group

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


170

	

0

	

DPG3

	

Material Price Group

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB1

	 	 


180

	

0

	

DPG4

	

Customer/Mat.Pr.Grp

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


190

	

0

	

DPG5

	

Cust. Grp/Mat.Pr.Grp

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB2

	 	 


195

	

0

	

DPH1

	

Product Hierarchy

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

0

	

YB1

	 	 


200

	

0

	

DRG1

	

% Gross Amount 1

	

100

	

0

	

X

	 	 	 	

a

	 	

2

	

0

	

0

	

YB3

	 	 


210

	

0

	

DRN1

	

% Net Amount 1

	

0

	

0

	

X

	 	 	 	

a

	 	

2

	

0

	

0

	

YB3

	 	 


220

	

0

	

DRQ1

	

+/- as to Quantity 1

	

0

	

0

	

X

	 	 	 	

a

	 	

2

	

0

	

0

	

YB3

	 	 


230

	

0

	

DRV1

	

Fixed Amount 1

	

0

	

0

	

X

	 	 	 	

a

	 	

2

	

0

	

0

	

YB3

	 	 


240

	

0

	

DRW1

	

+/- as to Grss Wght1

	

0

	

0

	

X

	 	 	 	

a

	 	

2

	

0

	

0

	

YB3

	 	 


300

	

0

	 	

Sum Surcharges/Discounts

	

101

	

299

	 	 	 	 	 	 	

0

	

0

	

0

	 	 	 


310

	

0

	

PNP0

	

Net Price

	

0

	

0

	

X

	 	 	 	 	 	

2

	

6

	

3

	

ERL

	 	 


390

	

0

	

D100

	

100% discount

	

0

	

0

	 	 	 	 	

a

	

G

	

55

	

0

	

28

	

ERS

	 	 


700

	

0

	 	

Net Value 1

	

0

	

0

	 	 	 	 	

a

	

2

	

0

	

2

	

0

	 	 	 


701

	

0

	

DRE1

	

Refund Deduction

	

0

	

0

	 	 	 	 	

a

	 	

2

	

0

	

2

	

ERS

	 	 


740

	

0

	 	

Stat.Value without Freight

	

0

	

0

	 	 	 	 	 	 	

0

	

82

	

0

	 	 	 


745

	

0

	

FPA1

	

Packaging fee

	

0

	

0

	

X

	 	 	 	

B

	

4

	

2

	

0

	

0

	

ERF

	 	 


750

	

0

	

YBHD

	

Freight

	

0

	

0

	

X

	 	 	 	

B

	

4

	

2

	

0

	

13

	

ERF

	 	 


770

	

0

	

FIN1

	

Insurance fee

	

0

	

0

	

X

	 	 	 	

B

	

4

	

2

	

0

	

0

	

ERF

	 	 


780

	

0

	

DPR1

	

Price-Related Diff.

	

0

	

0

	

X

	 	

X

	 	 	 	

0

	

0

	

0

	 	 	 


781

	

0

	

DQU1

	

Qty-Related Diff.

	

0

	

0

	

X

	 	

X

	 	 	 	

0

	

0

	

0

	 	 	 


800

	

0

	 	

Net Value 2

	

0

	

0

	 	 	 	 	 	

3

	

0

	

2

	

0

	 	 	 


821

	

0

	

PI02

	

Inter-company %

	

740

	

770

	 	 	

X

	 	 	

B

	

22

	

0

	

0

	

ERL

	 	 


822

	

0

	

PI01

	

Inter-company Price

	

0

	

0

	 	 	

X

	 	 	

B

	

22

	

0

	

0

	

ERL

	 	 


849

	

0

	

DCD2

	

Cash Discount Net

	

0

	

0

	 	 	

X

	 	 	

D

	

14

	

0

	

2

	 	 	 


850

	

0

	

UTXJ

	

Tax Jurisdict.Code

	

800

	

0

	 	

X

	

X

	 	 	 	

84

	

300

	

16

	 	 	 


851

	

0

	

JR1

	

Tax Jur Code Level 1

	

800

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

0

	 	 	 


852

	

0

	

JR2

	

Tax Jur Code Level 2

	

800

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

0

	 	 	 


853

	

0

	

JR3

	

Tax Jur Code Level 3

	

800

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

0

	 	 	 


854

	

0

	

JR4

	

Tax Jur Code Level 4

	

800

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

0

	 	 	 


855

	

0

	

XR1

	

Tax Jur Code Level 1

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


856

	

0

	

XR2

	

Tax Jur Code Level 2

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


857

	

0

	

XR3

	

Tax Jur Code Level 3

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


858

	

0

	

XR4

	

Tax Jur Code Level 4

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


859

	

0

	

XR5

	

Tax Jur Code Level 5

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


860

	

0

	

XR6

	

Tax Jur Code Level 6

	

0

	

0

	

X

	 	 	 	

B

	 	

0

	

0

	

16

	 	 	 


899

	

0

	

DRD1

	

Rounding Off

	

0

	

0

	 	

X

	 	 	 	 	

13

	

16

	

4

	

ERS

	 	 


900

	

0

	 	

Total Value

	

0

	

0

	 	 	 	 	 	

A

	

0

	

4

	

0

	 	 	 


910

	

0

	

DCD1

	

Cash Discount Gross

	

0

	

0

	 	 	

X

	 	 	 	

9

	

0

	

11

	 	 	 


935

	

0

	

PC02

	

Calculated costs

	

0

	

0

	

X

	 	

X

	 	 	

B

	

0

	

0

	

0

	 	 	 


950

	

0

	 	

Profit Margin

	

0

	

0

	 	 	 	 	 	 	

0

	

11

	

0

	 	 	 


960

	

0

	

PSAM

	

Standalone (Mat.)

	

0

	

0

	 	 	

X

	 	 	 	

99

	

0

	

0

	 	 	 


965

	

0

	

DCEV

	

Tolerance f.Exp.Val.

	

0

	

0

	 	 	

X

	 	 	 	

0

	

0

	

0

	 	 	 


970

	

0

	

PCE1

	

Cust.-Expected Price

	

0

	

0

	

X

	 	

X

	 	 	 	

0

	

8

	

0

	 	 	 


971

	

0

	

PCE2

	

Cust.-Expected Value

	

0

	

0

	

X

	 	

X

	 	 	 	

0

	

8

	

0

	 	 	 

Note

SAP CPQ now supports the usage of a pricing procedure that has sub-procedures, and the sync of sub-procedures has been enabled as well.

Yes
No