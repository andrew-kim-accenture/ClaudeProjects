# Sequence Tags | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/10dc886b7eb64783803fe942972d7774.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Import/Export
	
Delegation of Authority
	
Security
	
Developer Tools
	
Audit Trail
	
SAP CPQ Tags


	
Conditional Statements
	
Tags and Expressions
	
CTX Tags
	
Product Tags


	
Arithmetic Tags
	
Attribute Data Tags
	
External Source Tags
	
Logged in User Data Tags
	
Product Data Tags
	
Sequence Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
Sequence Tags
Tag	Description	Type Returned	Example


<*PSEQ(sequence name)*>

	

Product sequence, which allows several products to use the same sequence independently of each other.

	

A Sequence value

	

Product 1 = ABC <* PSEQ(productSeq) *> Product 2 = XYZ <* PSEQ(productSeq) *> - sequence is ABC001, XYZ001, ABC002, XYZ002, and so on.




<*GSEQ(sequence name)*>

	

Global sequence, which allows several products to share the same sequence.

	

A Sequence value

	

Product 1 = ABC <* PSEQ(productSeq) *> Product 2 = XYZ <* GSEQ(productSeq)*> - sequence is ABC001, XYZ002, ABC003, and so on.




<*SSEQ(sequence 1 name,sequence 2 name, …, sequence n name)*>

	

Nested sequences, which allow sequences to be used with another sequence.

	

A Sequence value

	

Sequence ABC = A,B,C; Sequence Three = 1,2,3 <* SSEQ(ABC,Three) *> - returns A1, A2, A3, B1, B2, B3, and so on.




<*CXSUB(intelligent sequence substitution name)*>

	

Used with serial numbers and substituting a number to replace long string of attribute values for a product number.

	

A Sequence Value

	

See chapter on Sequences for more information.

Yes
No