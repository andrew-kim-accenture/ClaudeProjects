# Invalid XML Characters | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/08a7929ad06d4680b4f18cb57bc1a1d3/db0ec8841cf14a7db21b30d5334aafc9.html?locale=en-US&state=PRODUCTION&version=2603
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
Invalid XML Characters

This topic contains a list of invalid XML characters.

If any of the special characters from the table below are used in an XML document, loading the document results in an Invalid XML error. The table lists the invalid characters, as well as what they should be replaced with in the XML. Furthermore, issues could be caused by badly formatted tags, such as <b> instead of <b/>.

Invalid XML Characters	Replace with


”<”

	

”&amp;lt;”




”>”

	

”&amp;gt;”




“\””

	

”&amp;quot;”




“\'”

	

”&amp;apos;”




”&”

	

”&amp;amp;”

To review an example code that uses the SAP CPQ API click User API Example

Yes
No