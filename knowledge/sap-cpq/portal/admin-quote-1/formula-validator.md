# Formula Validator | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/61927e07452e462ba30c1116c7dfd552.html?locale=en-US&state=PRODUCTION&version=2603
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
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator


	
CTX Syntax Builder
	
Table and List Tags
Formula Validator

Tags and expressions are a powerful part of SAP CPQ. To help reduce errors and simplify the process, the Formula Builder is available to create expressions.

To access the Formula Builder, click the  button next to the field where the expression is applied.

This button is available anytime an expression can be used. Clicking a Formula Builder button brings up the Formula Builder window. Formula Builder changes according to the settings the expression is created for.

For example, if an expression is being added for a rule or trigger, then an additional Triggers/Rules box will be displayed with the Formula Builder. In addition, if you are building an expression that is related to a quote, such as quote visibility rules, then the window will look like the figure on the left. The basic principles for using the Formula Builder are the same despite what setting the expression is being created for.

The Formula Builder window is divided into two sections. The main box at the bottom is where the expression is formed. Expressions can be typed in manually, if necessary, and in certain instances, phrases can be entered into the box to be displayed to the user. The Check Syntax button checks the expression to ensure that the tags have been joined correctly and that all punctuation is correct. Any errors are displayed at the bottom of the window. It's a good idea to check an expression before inserting it to ensure it functions correctly and that it doesn’t produce an error for the user. When finished, the Update button inserts the created expression into the field.

The top section of the Formula Builder windows contains boxes to build the expression. In most cases, to build an expression, you select the attribute, value, sequence, and so on, that an action is performed on, then select the action. The top section is also categorized. To the right, you have operators, and to the left you have context-sensitive options divided into 3 tabs (Variables, Actions / Conditions (depends on the context), Sequences). Note that you sometimes see Actions, while other times you see Conditions as the second tab, depending on the context. Sometimes both are unavailable. When the Syntax Checker opens, it activates the tab that contains the most appropriate options for the given context.

An Select Operator box is available in every Formula Builder window to create conditional statements and Boolean logic. Click the operator in the box and then click Insert Operator into the expression. In most cases, the operator is added in its full syntax, with all parenthesis, and you only need to fill in the parameters. This formula is an example of an expression using an operator: [AND](<*ANYSEL(Hard Drive:HD200)*>,<*ANYSEL(Memory:2GB)*>). It states that the Hard Drive attribute with the value HD200 AND the Memory attribute with the value 2GB need to be selected in order for this expression to be true.

To create an expression in the Formula Builder, select an action/condition/variable, then (if needed) select attributes. Attribute values can also be selected for the expression if necessary. Click the Insert button to add the new tag to the expression. Sequences can also be used in expressions by selecting the sequence from the Select Operator box in the Sequence tab, then selecting the sequence for it (see the chapter on SequencesSequences).

The attributes displayed in the box are only the ones selected for that product or category, depending on what you are creating the expression for (applies to all Formula Builder windows. If a certain object, attribute or an attribute value isn’t available, make sure it’s checked, selected, or even created for the settings the expression is being created for.

The actions are also different for each Formula Builder window. For information on what an action does, check Attribute Data TagsAttribute Data Tags. This topic also contains information on the proper way to join tags and create expressions. While the Formula Builder aids in the process of creating expressions, tags need to be joined and built correctly in order for the expression to function accurately.

Note that building some variables is complicated if you use syntax checker alone. Such is the case with <* CTX(…) *> and <* TABLE(…) *> objects. When you need to insert these variables, select them from the list. A new button appears (for example Construct TABLE tag), and clicking it brings up a new popup window where you can build your complex tag.

Once you have finished building your complex tag, you can insert it into syntax builder window and continue building the rest of your formula. For more information on complex tags and their builders, refer to Table and List Tags and CTX Syntax BuilderCTX Syntax Builder.

CTX Tag Visualization

Each Formula Builder also has a Visualize button that can ease formula creation.

Since SAP CPQ formulas are essentially expressions and not the algorithm (the program), a tree control can be used to display them. Tag names are colored blue and operators are colored green.

Tags are displayed as nodes that can have children nodes if the tag has arguments. If another tag is in the argument of a tag, same definition is recurrently applied.

<*AUX(price, Price, Part_Number,<*ValueCode(Cell Kits)*>)*>

As exception, tags that take comma/colon and comma/colon/bar arguments are shown differently.

<*ANYSEL(Bulkhead Connector:IE6MTImp,Housing Material:Delrin)*>

Operators are shown as a node with parameters as child nodes.

[OR](a,b,c)

Special operator IF is shown as a main node with tree child nodes representing condition, true and false branches.

[IF](some condition){do if true}{do if false}[ENDIF]

A real, complex formula can look like this:

[IF]([OR]([EQ](<*VALUECODE(Product Code Identifier)*>,A0200B),[EQ](<*VALUECODE(Product Code Identifier)*>,A0200B),[EQ](<*VALUECODE(Product Code Identifier)*>,A0200B))){0}{<*AUX(Prices, ListPrice, ProductPartCode, CON-H0004-1)*>}[ENDIF]



CTX Syntax Builder

CTX syntax builder is a page on which you can generate your CTX expressions. It’s accessed from the Formula Builder when CTX is selected from the list of available variables.
Table and List Tags

The <* TABLE (…) *> and <* LIST (…) *> tags are used to fetch data from data tables uploaded by customers. Users can use SQL aggregate functions: MIN, MAX, AVG, SUM, COUNT, as well as match upper and match lower. You can also retrieve records greater than some entered value.
Yes
No