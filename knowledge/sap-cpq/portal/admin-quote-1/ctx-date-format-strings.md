# CTX Date Format Strings | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/884885f05e6b4c8082254d4d9d63f19b/bdf1a3a0e2f94e33875b3fd64dda0c3b.html?locale=en-US&state=PRODUCTION&version=2603
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


	
CTX Date Format Strings
	
CTX Objects and Lifetime
	
Enhanced Language Tags
	
SOD Details
	
Product Tags
	
Quote Tags
	
Tags for Rules and Triggers
	
Main Item Price Tag
	
XWS Tag
	
Global Information (GI) Variables
	
Formula Validator
CTX Date Format Strings

This topic contains format specifiers accepted by the Date Time Format string.

d

	

Represents the day of the month as a number from 1 through 31. A single-digit day is formatted without a leading zero




dd

	

Represents the day of the month as a number from 01 through 31. A single-digit day is formatted with a leading zero.




f

	

Represents the most significant digit of the seconds fraction; that is, it represents the tenths of a second in a date and time value.If the f format specifier is used without other format specifiers, it is interpreted as the f standard date and time format specifier.




ff

	

Represents the two most significant digits of the seconds fraction; that is, it represents the hundredths of a second in a date and time value.




fff

	

Represents the three most significant digits of the seconds fraction; that is, it represents the milliseconds in a date and time value.




h

	

Represents the hour as a number from 1 through 12, that is, the hour as represented by a 12-hour clock that counts the whole hours since midnight or noon. A particular hour after midnight is indistinguishable from the same hour after noon. The hour is not rounded, and a single-digit hour is formatted without a leading zero. For example, given a time of 5:43, this custom format specifier displays “5”.




hh

	

Represents the hour as a number from 01 through 12, that is, the hour as represented by a 12-hour clock that counts the whole hours since midnight or noon. A particular hour after midnight is indistinguishable from the same hour after noon. The hour is not rounded, and a single-digit hour is formatted with a leading zero. For example, given a time of 5:43, this format specifier displays “05”.




H

	

Represents the hour as a number from 0 through 23, that is, the hour as represented by a zero-based 24-hour clock that counts the hours since midnight. A single-digit hour is formatted without a leading zero.




HH

	

Represents the hour as a number from 00 through 23, that is, the hour as represented by a zero-based 24-hour clock that counts the hours since midnight. A single-digit hour is formatted with a leading zero.




m

	

Represents the minute as a number from 0 through 59. The minute represents whole minutes that have passed since the last hour. A single-digit minute is formatted without a leading zero.




mm

	

Represents the minute as a number from 00 through 59. The minute represents whole minutes that have passed since the last hour. A single-digit minute is formatted with a leading zero.




M

	

Represents the month as a number from 1 through 12. A single-digit month is formatted without a leading zero.




MM

	

Represents the month as a number from 01 through 12. A single-digit month is formatted with a leading zero.




s

	

Represents the seconds as a number from 0 through 59. The result represents whole seconds that have passed since the last minute. A single-digit second is formatted without a leading zero.




ss

	

Represents the seconds as a number from 00 through 59. The result represents whole seconds that have passed since the last minute. A single-digit second is formatted with a leading zero.




tt

	

Represents the AM/PM designator.




y

	

Represents the year as a one or two-digit number. If the year has more than two digits, only the two low-order digits appear in the result. If the first digit of a two-digit year begins with a zero (for example, 2008), the number is formatted without a leading zero.




yy

	

Represents the year as a two-digit number. If the year has more than two digits, only the two low-order digits appear in the result. If the two-digit year has fewer than two significant digits, the number is padded with leading zeros to achieve two digits.




yyy

	

Represents the year with a minimum of three digits. If the year has more than three significant digits, they are included in the result string. If the year has fewer than three digits, the number is padded with leading zeros to achieve three digits.




yyyy

	

Represents the year as a four-digit number. If the year has more than four digits, only the four low-order digits appear in the result. If the year has fewer than four digits, the number is padded with leading zeros to achieve four digits.


 	

Copies any other character to the result string, without affecting formatting.

In order for Salesforce to receive data in SF Date Time type fields, the valid format must be as follows: yyyy-MM-ddTHH:mm:ss.ff

Example: <*CTX( Quote.DateCreated.Format(yyyy-MM-ddTHH:mm:ss.ff) )*>

Yes
No