# Sequences | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/558b456d530e4fdfa4b3441c06ebe7cf.html#working-with-sequences
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
Sequences

Sequences are typically used in constructing part numbers where an entire part number or a portion of a part number is serialized.

Sequences can be defined as numeric or alpha sequences. They’re referenced using tags, which are discussed later in the topic. Sequences can be administrated by clicking on Sequences link under the Products admin menu. Here you can easily copy, delete, or edit existing sequences.

User can add a new Sequence by clicking the Add New button. It brings up a blank Sequence Definition page. Editing a Sequence brings up the same screen.

Seqname - Name given to the Sequence. This name is used when referring to the sequence in an expression for part numbers or other definition area.

Description – Describe a sequence using additional details such as intended use, and so on.

Globalseq – Specifies whether or not the sequence is shared globally among all products (Y) or independently for different products (N).

Startno – The first element in the Sequence. The value is set to 0 for if a string list is used.

Endno – The last element in a sequence. This value can also be set to 0 if a string list is used.

Stepval – Specifies what the Sequence is incremented by. Any value can be used.

Order – Specifies whether the Sequence is set up as an Ascending Sequence or a Descending Sequence.

Alpha – Specifies if the Sequence elements are interpreted as Alpha (Y) or Numeric (N).

Stringlist – If the sequence consists of an arbitrary sequence such as an array of strings, enter the values here. Each value needs to be separated by commas (for example: Alpha, Bravo, Charlie, Delta, Echo, and so on).

Presentation – Controls how the Sequence is displayed.

STR* - Displays the value by itself with no leading 0s

STR2 – STR8 – Specifies that the value is preceded by 0s and the number of 0s that precede. The choices count the number of digits in the number, not the number of 0s preceding (for example, for STR* the number would be 8, for STR3 it would be 008 Seqtype – Specifies the type of Sequence. NUMERIC only allows a Sequence of numbers while STRINGLIST allows any characters.

CHAR – Used when creating a Sequence of the Alphabet.

A to Z Sequence

One method of creating an A to Z Sequence would be to type A, B, C, …, Z into the Stringlist field. An easier way is to use the CHAR function in the Presentation dropdown box to generate an A to Z Sequence. To create an A to Z Sequence, enter 1 for Startno, 26 for Endno and 1 for Stepval. Make sure the Order is Ascending, Alpha is set to Y, and Presentation is set to CHAR. CHAR converts the Sequence value into an Alphabetic character. If Lowercase is desired, use 33 for the StartNo and 58 for the Endno.

Sequences and Part Numbers

Sequences are used with part numbers to uniquely identify a configuration. There are two ways to attach a Sequence to a product number: assign it in the Configurator during product configuration, or assign it when adding the product to a quote. Assigning sequences in quotes increases the likelihood that sequence values will be used for configurations that become orders. Otherwise, sequence values may be wasted.

Several settings under Application Parameters affect sequences and their behavior. One such setting under the Configurator tab is Do Not Recycle Sequences. This setting determines whether the system goes through the sequence again after reaching Endno. Setting it to TRUE instructs the system not to reuse the sequence.

Another related setting on the Application Parameters  General Parameters page is Unique Product Codes. Setting it to TRUE ensures that every product code is unique, preventing duplicate product codes in the system.

Working with Sequences
In order to include a sequence in the part number or other definition area, you can use one of these tags:

PSEQ – product sequence

GSEQ – global sequence

SSEQ – nested sequences

PSEQ (syntax: <*PSEQ(sequence name)*>) is a product sequence, which allows several products to use the same sequence independently of each other. In other words, under this scenario, two products can use the same sequence in their part numbers.

For example, product ABC part numbers can be: ABC0001, ABC0002, ABC0003… Product XYZ part numbers can be: XYZ0001, XYZ0002, XYZ0003, and so on. Both products have the same sequences (0001, 0002, 0003…).

GSEQ (syntax: <*GSEQ(sequence name)*>) is a global sequence, which allows several products to share the same sequence. In other words, under this scenario, two products increment the same sequence and therefore a sequence number is only used once.

For example, product ABC part numbers can be: ABC0001, ABC0002, ABC0004… Product XYZ part numbers can be: XYZ0003, XYZ0005, XYZ0006…

Here Product ABC uses the sequence numbers 0001 and 0002. Product XYZ uses the sequence number 0003. Since 0003 had already been used, the next sequence number available for Product ABC was 0004.

Note

In order for GSEQ to work correctly, all products that are incrementing the Sequence need to have GSEQ used in their expressions.

SSEQ (syntax: <*SSEQ(sequence name1, sequence name 2, …, sequence name n)*>) allows sequences to be nested. For example, two sequences go from 1 to 3, and they are named sequence One and Two. The expression <*SSEQ (one, two)*> would result in 11, 12, 13, 21, 22, 23, 31, 32, 33.

Another example would be to have one sequence name of ABC with string elements A, B, C, and another sequence named Ten going from 1 to 10, then expression <*SSEQ(ABC, Ten)*> would result in A1, A2, A3, A4, A5, A6…, A9, A10, B1, B2, …, B10, C1…, C10.

Similarly, if a portion of a part number is defined as <*SSEQ(Ten, ABC)*> then the results would be 1A, 1B, 1C, 2A, 2B, …10C.

CXSUB (syntax: <*CXSUB(sequence substitution name)*>) is used for Sequence Substitutions. Sequence Substitution is used with serial numbers and substituting a number to replace long string of attribute values for a product number. Sequence Substitution tells the system to use the same serial number when certain selected attributes are chosen again.

There are no limits as to how many sequences can be used in defining a part number. For example, a part number can be defined as <*Value(Number of Poles)*><PSEQ(some seqname)*><*Value(another attribute)*><PSEQ(another seqname)*><*GSEQ(third sequence)*><*SSEQ(seq four, seq five)*>. Sequences can also be included in the part number only if certain conditions are met. This is accomplished by using an IF statement: [If](condition) {expression if true}{expression if false – note this is optional} [ENDIF]. The condition uses the following syntax ([operator](variable1, variable 2)).

For example, if there’s an attribute called Number of Poles and it needs to use numbers from 2000 to 2999 from a sequence named 2000-2999 when the number of poles is 2, but use numbers from 3000 to 4999, from a sequence named 3000-4999, when the number of poles is greater than 3, the expression entered into the Product Catalog Code generator would be as follows:



<*Value(some attribute)*><*CatCode(another attribute)*>
[IF]([EQ](<*Value(Number of Poles*>, 2)){PSeq( 2000-2999)}[ENDIF]
[IF]([GT](<*Value(Number of Poles*>, 3)){PSeq( 3000-4999)}[ENDIF]
On this page
A to Z Sequence
Sequences and Part Numbers
Working with Sequences
Yes
No