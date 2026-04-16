# Classes and Methods Used for Replacing CLR Module Import | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/5144f90a3fba4a65a4c992c3ae59ef7f.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ Scripting Events, Properties and Event PipelineVersion: 2603English
Provide feedback on our search

	
Introduction
	
SAP CPQ script plugin
	
Alternatives to CLR Module Import


	
Classes and Methods Used for Replacing CLR Module Import
	
Common properties
	
Iron Python Events
	
How-to Examples
	
Event Pipeline in Quote 1.0
	
Event Pipeline in Quote 2.0
	
Script Performance
Classes and Methods Used for Replacing CLR Module Import

The classes and methods listed here were introduced to be used as alternatives to CLR module importing.

StringContent Class

Method

	

Description





public class StringContent
{
}
	

Wrapper for System.Net.Http.StringContent.





<param name="content">The content used to initialize the StreamContent.</param>
	public StreamContent(Stream content);
	

Creates a new instance of the StringContent class.





<param name="content">The content used to initialize the StreamContent.</param>
	<param name="bufferSize">The size, in bytes, of the buffer for the StreamContent.</param>
	public StreamContent(Stream content, int bufferSize);
	

Creates a new instance of the StringContent class.





public virtual IEnumerator<KeyValuePair<string, IEnumerable<string>>> GetContentHeaders();
	

Enumerates through content headers.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValue">The content of the header.</param>
	public void AddContentHeaders(string headerName, string headerValue);
	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValues">A list of header values to add to the collection.</param>
	public void AddContentHeaders(string headerName, IEnumerable<string> headerValues);	
	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.

ByteArrayContent Class

Method

	

Description





public class ByteArrayContent : HttpContent
{
}
	

Wrapper for System.Net.Http.ByteArrayContent.





<param name="content">The content as byte array used to initialize the ByteArrayContent.</param>
	public ByteArrayContent(byte[] content);

	

Initializes a new instance of the ByteArrayContent class.





<param name="content">The content as byte array used to initialize the ByteArrayContent.</param>
	<param name="offset">The offset, in bytes, in the content parameter used to initialize the ByteArrayContent.</param>
	<param name="count"> The number of bytes in the content starting from the offset parameter used to initialize the ByteArrayContent.</param>
	public ByteArrayContent(byte[] content, int offset, int count);
	

Initializes a new instance of the ByteArrayContent class.





public virtual IEnumerator<KeyValuePair<string, IEnumerable<string>>> GetContentHeaders();

	

Enumerates through content headers.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValue">The content of the header.</param>
	public void AddContentHeaders(string headerName, string headerValue);
	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValues">A list of header values to add to the collection.</param>
	public void AddContentHeaders(string headerName, IEnumerable<string> headerValues);
	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.

MultipartFormDataContent Class

Method

	

Description





public class MultipartFormDataContent : HttpContent
{
}
	

Wrapper for System.Net.Http.MultipartFormDataContent.





public MultipartFormDataContent();
	

Create instance of MultipartFormDataContent.





<param name="boundary">Boundary beetwen different contents.</param>
	public MultipartFormDataContent(string boundary);
	

Create instance of MultipartFormDataContent with specified boundary.





<param name="content">content to add.</param>
	public void Add(HttpContent content);
	

Add content to MultipartFormDataContent.





<param name="content">content to add.</param>
	<param name="name">name</param>
	public void Add(HttpContent content, string name);
	

Add content to MultipartFormDataContent.





<param name="content">content to add.</param>
	<param name="name">name</param>
	<param name="fileName">file name</param>
	public void Add(HttpContent content, string name, string fileName);
	

Add content to MultypartFormDataContent.





public virtual IEnumerator<KeyValuePair<string, IEnumerable<string>>> GetContentHeaders();

	

Enumerates through content headers.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValue">The content of the header.</param>
	public void AddContentHeaders(string headerName, string headerValue);

	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.





<param name="headerName">The header to add to the collection.</param>
	<param name="headerValues">A list of header values to add to the collection.</param>
	public void AddContentHeaders(string headerName, IEnumerable<string> headerValues);
	

Adds the specified header and its value into the System.Net.Http.Headers.HttpHeaders collection.


Encodings enums
Assigned numbers are the code page IDs of the specified encoding type.
Method	Description



public enum Encodings
{
}
	

Represents mostly used Encoding types.





        ASCII = 20127,
	

ASCII Encoding.





Default = 0,
	

Default Encoding.





        Unicode = 1200,
	

Unicode Encoding.





        BigEndianUnicode = 1201,
	

BigEndianUnicode Encoding.





        UTF7 = 65000,
	

UTF7 Encoding.





        UTF8 = 65001,
	

UTF8 Encoding.





        UTF32 = 12000
	

UTF32 Encoding.

Methods Added to RestClient

Method

	

Description





<param name="uri">url where request is sent.</param>
<param name="requestHeaders">request headers.</param>
<param name="content">request body in form of a MultipartFormDataContent.</param>
<returns>Dynamic representation of server response.</returns>
dynamic Put(string uri, IDictionary<string, string> requestHeaders, MultipartFormDataContent content);

	

Sends PUT request to specified URL.





<param name="uri">url where request is sent.</param>
<param name="requestHeaders">request headers.</param>
<param name="content">request body in form of a MultipartFormDataContent.</param>
<returns>Dynamic representation of server response.</returns>
dynamic Post(string uri, IDictionary<string, string> requestHeaders, MultipartFormDataContent content);

	

Sends POST request to specified URL.





<param name="uri">url where request is sent.</param>
<param name="requestHeaders">request headers.</param>
<param name="content">request body in form of a MultipartFormDataContent.</param>
<returns>Dynamic representation of server response.</returns>
dynamic Patch(string uri, IDictionary<string, string> requestHeaders, MultipartFormDataContent content);

	

Sends PATCH request to specified URL.





<param name="uri">url where request is sent.</param>
<param name="requestHeaders">request headers.</param>
<returns>Response content as stream.</returns>
Stream GetStream(string uri, IDictionary<string, string> requestHeaders);
	

Sends GET request to specified URL.

New Product Methods

Method

	

Description





<param name="tabName">Name of the tab.</param>
<returns>Type: <see cref="bool" /><br />
Returns true if tab is visible, othervise false.</returns>
bool IsTabVisible(string tabName);
	

Checks if tab exists and is visible.





<param name="tabName">Name of the tab.</param>
<exception cref="InvalidOperationException">Thrown in case tab doesn't exist or is not visible.</exception>
void ChangeTab(string tabName);
	

Changes tab to the tab with specified name.

How to use StreamReader

The StreamReader has been moved to the Scripting namespace. Please use it in the correct way and avoid incorrect usage, as displayed in the following table:

Incorrect

	

Correct





import clr;
clr.AddReference('Webcom.Configurator')
from Webcom.Configurator.Scripting import StreamReader
a = StreamReader()
	


a = StreamReader()
Related Information
Alternatives to CLR Module Import
On this page
StringContent Class
ByteArrayContent Class
MultipartFormDataContent Class
Encodings enums
Methods Added to RestClient
New Product Methods
How to use StreamReader
Related Information
Yes
No