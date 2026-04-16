# Alternatives to CLR Module Import | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/abe5bf645c9542a5bd4cbfdcc1a4876c/210211e2ddd84124ad23c08ab4e043b3.html?locale=en-US&state=PRODUCTION&version=2603
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
Alternatives to CLR Module Import

Alternatives to importing the CLR module are mentioned in this topic.

IronPython Scripting: Alternatives to clr and sys modules
clr Module - Alternatives

In the context of SAP CPQ, scripting has always played a crucial role. Customers have created numerous IronPython scripts to customize SAP CPQ according to their requirements. However, some of these scripts have raised security concerns due to identified malicious activities. To address this issue, a list of prohibited modules and keywords was introduced, focusing on the most potentially harmful ones. Despite these restrictions, it was still possible to exploit the clr module. Consequently, in the 2402 release, the decision was made to completely prohibit the import of the CLR module.

It has been noticed that for many namespaces imported via the clr module, there are already good enough alternatives provided by either IronPython or the SAP CPQ API (take a look at ScriptWorkbench  API explorer). SAP CPQ has analyzed the usage of such namespaces and offers alternatives for you.

System.Linq
System.Linq is the most commonly imported namespace. Even so, there are often elegant Python constructs that can easily replace the usage of System.Linq.
Note

Every time you want to use System.Linq, try to use list comprehension. It's a powerful Python construct to make your code more readable.

Examples:

Using System.Linq

	

Using Pure Python





import clr
import System
clr.AddReference('System.Core')
clr.ImportExtensions(System.Linq)


import clr
import System
clr.AddReference('System.Core')

	 



attributeNames = Product.Attributes.Select(lambda attribute: attribute.Name).ToList()
	


attributeNames = [attribute.Name for attribute in Product.Attributes]




requiredAttributes = Product.Attributes.Where(lambda attribute: attribute.Required).ToList()
	


requiredAttributes = [attribute for attribute in Product.Attributes if attribute.Required]




namesOfRequiredAttributes = Product.Attributes.Where(lambda attribute: attribute.Required).Select(lambda attribute: attribute.Name).ToList()
	


namesOfRequiredAttributes = [attribute.Name for attribute in Product.Attributes if attribute.Required]




length = Quote.MainItems.Count()
	


length = len(list(Quote.MainItems))




list = Product.Attributes.GroupBy(lambda a: a.Required)

# for attributes in list:
#     Trace.Write(attributes.Key)
#         for attribute in attributes:
#             Trace.Write("\t" + attribute.Name)
	


# Unfortunately, there is no one line solution for groupby.
# You can either create dictionary by hand:
aDictionary = {}
for attribute in Product.Attributes:
	aDictionary.setdefault(attribute.Required, []).append(attribute)

# for required, attributes in aDictionary.items():
# 	Trace.Write(required)
# 	for attribute in attributes:
# 		Trace.Write("\t" + attribute.Name)

# .. or by use groupby from itertools:

from itertools import groupby

# Don't remember to use the sorted function first!
condition = lambda x: x.Required
aGroupbyObject = groupby(sorted(Product.Attributes, key=condition), condition)

# for required, attributes in aGroupbyObject:
# 	Trace.Write(required)
# 	for attribute in attributes:
# 		Trace.Write("\t" + attribute.Name)




Product.Attributes.Any(lambda attribute: attribute.Required)
	


any(attribute.Required for attribute in Product.Attributes)




Product.Attributes.All(lambda attribute: attribute.Required)
	


all(attribute.Required for attribute in Product.Attributes)




Product.Attributes.Sum(lambda attribute: len(attribute.Name))
	


sum(len(attribute.Name) for attribute in Product.Attributes)




Product.Attributes.First()
	


next(iter(Product.Attributes))




Product.Attributes.First(lambda attribute: attribute.Required)
	


next(attribute for attribute in Product.Attributes if attribute.Required)




Product.Attributes.FirstOrDefault()
	


next(iter(Product.Attributes), None)




Product.Attributes.FirstOrDefault(lambda attribute: attribute.Required)
	


next((attribute for attribute in Product.Attributes if attribute.Required), None)




items = Quote.MainItems.Skip(23)
	


items = list(Quote.MainItems)[23:]

System.Linq
The usage of System.Linq should be replaced with pure Python constructs.

Using System.Linq

	

Using Pure Python





import clr
import System
clr.ImportExtensions(System.Linq)
	 



attributeNames = Product.Attributes.Select(lambda attribute: attribute.Name).ToList()
	


attributeNames = [attribute.Name for attribute in Product.Attributes]




requiredAttributes = Product.Attributes.Where(lambda attribute: attribute.Required).ToList()
	


requiredAttributes = [attribute for attribute in Product.Attributes if attribute.Required]




namesOfRequiredAttributes = Product.Attributes.Where(lambda attribute: attribute.Required).Select(lambda attribute: attribute.Name).ToList()
	


namesOfRequiredAttributes = [attribute.Name for attribute in Product.Attributes if attribute.Required]




length = Quote.MainItems.Count()
	


length = len(list(Quote.MainItems))




list = Product.Attributes.GroupBy(lambda a: a.Required)

# for attributes in list:
#     Trace.Write(attributes.Key)
#         for attribute in attributes:
#             Trace.Write('\t' + attribute.Name)
	


# Unfortunately, there is no one line solution for groupby.
# You can either create dictionary by hand:
aDictionary = {}
for attribute in Product.Attributes:
	aDictionary.setdefault(attribute.Required, []).append(attribute)

# for required, attributes in aDictionary.items():
# 	Trace.Write(required)
# 	for attribute in attributes:
# 		Trace.Write('\t' + attribute.Name)

# .. or by use groupby from itertools:

from itertools import groupby

# Don't remember to use the sorted function first!
condition = lambda x: x.Required
aGroupbyObject = groupby(sorted(Product.Attributes, key=condition), condition)

# for required, attributes in aGroupbyObject:
# 	Trace.Write(required)
# 	for attribute in attributes:
# 		Trace.Write('\t' + attribute.Name)




Product.Attributes.Any(lambda attribute: attribute.Required)
	


any(attribute.Required for attribute in Product.Attributes)




Product.Attributes.All(lambda attribute: attribute.Required)
	


all(attribute.Required for attribute in Product.Attributes)




Product.Attributes.Sum(lambda attribute: len(attribute.Name))
	


sum(len(attribute.Name) for attribute in Product.Attributes)




Product.Attributes.First()
	


next(iter(Product.Attributes))




Product.Attributes.First(lambda attribute: attribute.Required)
	


next(attribute for attribute in Product.Attributes if attribute.Required)




Product.Attributes.FirstOrDefault()
	


next(iter(Product.Attributes), None)




Product.Attributes.FirstOrDefault(lambda attribute: attribute.Required)
	


next((attribute for attribute in Product.Attributes if attribute.Required), None)




items = Quote.MainItems.Skip(23)
	


items = list(Quote.MainItems)[23:]




items = Quote.MainItems.Last()
	


items = list(Quote.MainItems)[-1]

System.Collections.Generic
Instead of standard collections from C#, data structures from Python must be used.

Using C# collections

	

Using Python data structures





import clr
clr.AddReference('System')
from System.Collections.Generic import *
	 



list = List[<type>]()
	


list = []




dictionary = Dictionary[<typeA>, <typeB>]()
	


dictionary = {}
System.Array, System.Byte, System.DateTime, System.Decimal, System.Guid
You are free to use the Array, Byte, DateTime, Decimal, and Guid types from the System namespace. There is no need to explicitly import those types. They are already imported and ready for use.
Note

The attributes of some methods that we exposed through the scripting API expect an object of type Byte[] as a parameter. Neither the bytes nor the bytearray Python functions meet our needs. Because of this, you are free to use Array and Byte types without explicitly importing them from the System namespace.

Old Way

	

Suggested Way





import clr
clr.AddReference('System')
	






from System import Array, Byte 
byteArray = Array[Byte]([ord(c) for c in 'some random string'])
stream = FileHelper.GetStreamFromBytes(byteArray)
	


byteArray = Array[Byte]([ord(c) for c in 'some random string'])
stream = FileHelper.GetStreamFromBytes(byteArray)




from System import DateTime
DateTime.Now # E.g. 1/7/2024 3:25:30 PM
	


DateTime.Now # E.g. 1/7/2024 3:25:30 PM




from System import Decimal
Decimal.MaxValue # 79228162514264337593543950335
	


Decimal.MaxValue # 79228162514264337593543950335




from System import Guid
guid = Guid.NewGuid() # E.g. 6ce8d114-39de-44d6-bb65-1d1de3d071d4
	


guid = Guid.NewGuid() # E.g. 6ce8d114-39de-44d6-bb65-1d1de3d071d4

System.String
There is no need for importing System.String. You must rely on the standard Python idioms. Here are the most common examples of using the System.String and the corresponding alternatives:

Using C# System.String

	

Using Python String





import clr
clr.AddReference('System')
from System import String
	 



if String.IsNullOrEmpty(s): # Do something ..
	


if not s: # Do something ..




String.Fromat('{0}_{1}', x, y)
	


'{0}_{1}'.format(x, y)




String.Join(delimiter, aList)
	


delimiter.join(map(str, aList))
System.Text
Instead of System.Text.StringBuilder, use Python's String join method.

Using StringBuilder

	

Using Pure Python





import clr
clr.AddReference('System')
from System.Text import StringBuilder
	 



sb = StringBuilder()
sb.Append("Don't ")
sb.Append("use ")
sb.Append("StringBuilder!")
s = sb.ToString()
	


list = []
list.append("Don't ")
list.append("use ")
list.append("StringBuilder!")
s = ''.join(list)
System.Globalization.CultureInfo

You are free to use CultureInfo object from the System.Globalization namespace. There is no need for explicit import, CultureInfo is already imported and ready to use.

Using CLR Module

	

Without uUsing CLR module





from System.Globalization import CultureInfo
from System import Decimal

value = float('78.08')
language = 'en-US'
culture = CultureInfo(language)
culture.NumberFormat.CurrencySymbol = '$'
formattedString = Decimal(value).ToString('c', culture) # $78.08
	


value = float('78.08')
language = 'en-US'
culture = CultureInfo(language)
culture.NumberFormat.CurrencySymbol = '$'
formattedString = Decimal(value).ToString('c', culture) # $78.08

System.Xml

Instead of importing the System.XML namespace, use the XmlHelper object provided by SAP CPQ.

Using XmlDocument

	

Using XmlHelper





import clr
clr.AddReference('System.Xml')
from System.Xml import XmlDocument
	 



# <users>
#   <user age="42">John Smith</user>
# </users>

xmlDocument = XmlDocument()
usersNode = xmlDocument.CreateElement('users')
xmlDocument.AppendChild(usersNode)
userNode = xmlDocument.CreateElement('user')
attribute = xmlDocument.CreateAttribute("age")
attribute.Value = '42'
userNode.Attributes.Append(attribute)
userNode.InnerText = 'John Smith'
usersNode.AppendChild(userNode)
# Trace.Write(xmlDocument.OuterXml)
	


# <users>
#   <user age="42">John Smith</user>
# </users>

userNode = XmlHelper.CreateXmlNode('user', 'John Smith')
XmlHelper.SetAttribute(userNode, 'age', '42')
usersNode = XmlHelper.CreateXmlNode('users', userNode)
# Trace.Write(usersNode.OuterXml)




xmlArray = XmlHelper.CreateXmlNode('XMLArray', Array[XmlElement](pythonListOfXmlNodes))
	


xmlArray = XmlHelper.CreateXmlNode('XMLArray', *pythonListOfXmlNodes)

Newtonsoft.Json and Newtonsoft.Json.Linq

Instead of importing the Newtonsoft.Json namespace, you must rely on SAP CPQ's JsonHelper object to serialize/deserialize JSON objects. You are also free to use the SerializeToJson and DeserializeJson methods from RestClient.

Newtonsoft

	

JsonHelper





import clr
clr.AddReference('Newtonsoft.Json')
from Newtonsoft.Json import JsonConvert
from Newtonsoft.Json.Linq import JObject
	






string_to_deserialize = '{"a": 3}'

data = JsonConvert.DeserializeObject(string_to_deserialize)
serialized_data = JsonConvert.SerializeObject(data)
	


string_to_deserialize = '{"a": 3}'

data = JsonHelper.Deserialize(string_to_deserialize)
serialized_data = JsonHelper.Serialize(data)




string_to_deserialize = '{"a": 3}'

data = JObject.Parse(string_to_deserialize)
serialized_data = str(data)
	


string_to_deserialize = '{"a": 3}'

data = JsonHelper.Deserialize(string_to_deserialize)
serialized_data = JsonHelper.Serialize(data)

HttpClient and WebRequest from System.Net

Instead of System.Net.HttpClient and System.Net.WebRequest, you must use SAP CPQ's RestClient object and its methods. Here are examples of HttpClient and WebRequest use cases with their respective alternatives:

GET request - JSON data

Using HttpClient

	

Using WebRequest

	

Using RestClient





import clr
clr.AddReference('System.Net.Http')
from System.Net.Http import HttpClient, HttpMethod, HttpRequestMessage

client = HttpClient()
client.DefaultRequestHeaders.Add('Accept', 'application/json');
request = HttpRequestMessage(HttpMethod.Get, 'https://dummyjson.com/products/1')
response = client.SendAsync(request).GetAwaiter().GetResult()
statusCode = int(response.StatusCode)
responseHeaders = response.Headers
responseBodyStr = response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
responseBodyJson = RestClient.DeserializeJson(responseBodyStr)
	


import clr
clr.AddReference('System.Net')
from System.Net import WebRequest

request = WebRequest.Create('https://dummyjson.com/products/1')
request.Method = 'GET'
request.Accept = 'application/json'
response = request.GetResponse()
statusCode = int(response.StatusCode)
responseHeaders = response.Headers
responseBodyStr = StreamReader(response.GetResponseStream()).ReadToEnd()
responseBodyJson = RestClient.DeserializeJson(responseBodyStr)
	


# Using RestClient, Accept and Conent-Type headers are set to 'application/json' by default.
responseBody = RestClient.Get('https://dummyjson.com/products/1')

GET request - text data

Using HttpClient

	

Using WebRequest

	

Using RestClient





import clr
clr.AddReference('System.Net.Http')
from System.Net.Http import HttpClient, HttpMethod, HttpRequestMessage

client = HttpClient()
client.DefaultRequestHeaders.Add('Accept', 'text/plain');
request = HttpRequestMessage(HttpMethod.Get, 'https://dummyjson.com/products/1')
response = client.SendAsync(request).GetAwaiter().GetResult()
responseBody = response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
	


import clr
clr.AddReference('System.Net')
from System.Net import WebRequest

request = WebRequest.Create('https://dummyjson.com/products/1')
request.Method = 'GET'
request.Accept = 'text/plain'
response = request.GetResponse()
responseBody = StreamReader(response.GetResponseStream()).ReadToEnd()
	


headers = {
    'Accept': 'text/plain'
}
responseBody = RestClient.Get('https://dummyjson.com/products/1', headers)

System.Net.Http

Instead of using HttpClient, HttpMethod, HttpRequestMessage, StreamContent, and MultipartFormDataContent from System.Net.Http to create requests, use the RestClient object provided by SAP CPQ. To create a request body that can contain various content types such as strings, streams, and byte arrays, create new instances of StringContent, StreamContent, ByteArrayContent, and MultiPartFormDataContent, which are already exposed.

Using System.Net.Http

	

Using RestClient





import clr
clr.AddReference('System.Net.Http')
clr.AddReference('System.Text')
from System.Text import Encoding
from System.Net.Http import HttpClient, StreamContent, HttpMethod, StringContent, HttpRequestMessage, MultipartFormDataContent

client = HttpClient()
request = HttpRequestMessage(HttpMethod.Post, url)
request.Headers.Add("Authorization","Basic " + token);
formDataContent = MultipartFormDataContent();
file = Quote.GetAttachedDocument(documentId)
formDataContent.Add(StreamContent(file.GetStream()), "uploaded_file", file.FileName); # file as 1st part of the content
formDataContent.Add(StringContent("sent", Encoding.UTF8, "text/plain"), "status"); # 2nd part of the content
request.Content = formDataContent
response = client.SendAsync(request).GetAwaiter().GetResult()
	


headers = {"Authorization": "Bearer " + token}

formDataContent = MultipartFormDataContent();
file = Quote.GetAttachedDocument(documentId)
formDataContent.Add(StreamContent(file.GetStream()), "uploaded_file", file.FileName); # file as 1st part of the content

#specify encoding type using Encodings enum 
formDataContent.Add(StringContent("sent", Encodings.UTF8, "text/plain"), "status"); # 2nd part of the content

response = RestClient.Post(url, headers, formDataContent)




import clr
clr.AddReference('System.Net.Http')
from System.Net.Http import HttpClient, StreamContent, HttpMethod, MultipartFormDataContent, HttpRequestMessage
from System.Net.Http.Headers import MediaTypeHeaderValue

client = HttpClient()
url = baseUrl + "/api/v1/admin/files/contentfile"
request = HttpRequestMessage(HttpMethod.Put, url)
accessToken = RestClient.GetBasicAuthenticationHeader("username","password")
request.Headers.Add("Authorization", accessToken);

formContent = MultipartFormDataContent();
document = Quote.GetLatestGeneratedDocumentStream()
streamContent= StreamContent(document)
streamContent.Headers.ContentType = MediaTypeHeaderValue("application/pdf")
formContent.Add(streamContent, "file", document.Name);
request.Content = formContent

response = client.SendAsync(request).GetAwaiter().GetResult()
	


url = baseUrl + "/api/v1/admin/files/contentfile"
accessToken = RestClient.GetBasicAuthenticationHeader("username","password")
headers = { "Authorization": str(accessToken) }

document = Quote.GetLatestGeneratedDocumentStream()
streamContent = StreamContent(document)

#add headers using AddContentHeaders() method
streamContent.AddContentHeaders("Content-Type", "application/pdf")

formContent = MultipartFormDataContent();
formContent.Add(streamContent, "file", document.Name);

c = RestClient.Put(url, headers, formContent)




import clr
clr.AddReference('System.Net.Http')
from System.Net.Http import HttpClient, HttpMethod, HttpRequestMessage
from System.Net.Http.Headers import MediaTypeHeaderValue

url = "https://http.cat/201"
client = HttpClient()
request = HttpRequestMessage(HttpMethod.Get, url)
response = client.SendAsync(request).GetAwaiter().GetResult()
result = response.Content.ReadAsStreamAsync().GetAwaiter().GetResult()
	


url = "https://http.cat/201"
result = RestClient.GetStream(url, {})




import clr
clr.AddReference('System.Net.Http')
from System.Net.Http import StringContent, StreamContent, ByteArrayContent, MultipartFormDataContent
from System.Net.Http.Headers import MediaTypeHeaderValue
from System.Text import Encoding

#making string content out of a string
content1 = StringContent("text1", Encoding.ASCII, "text/plain")

#making stream content out of a stream
content2 = StreamContent(Quote.GetLatestGeneratedDocumentStream())
content2.Headers.ContentType = MediaTypeHeaderValue("application/pdf")

#making ByteArrayContent out of a byte array (i.e. byte[])
content3 = ByteArrayContent(Quote.GetLatestGeneratedDocumentInBytes())

#making MultipartFormDataContent and adding parts to it
content = MultipartFormDataContent()
content.Add(content1,"string_content")
content.Add(content2, "file", "document1.pdf")
content.Add(content3)
	


#making string content out of a string
content1 = StringContent("text1", Encodings.ASCII, "text/plain")

#making stream content out of a stream
content2 = StreamContent(Quote.GetLatestGeneratedDocumentStream())
content2.AddContentHeaders("Content-Type","application/pdf")

#making ByteArrayContent out of a byte array (i.e. byte[])
content3 = ByteArrayContent(Quote.GetLatestGeneratedDocumentInBytes())

#making MultipartFormDataContent and specifing its name
content = MultipartFormDataContent()
content.Add(content1,"string_content")
content.Add(content2, "file", "document1.pdf")
content.Add(content3)


System.Net

Instead of using WebRequest and WebResponse from System.Net to create requests, use the RestClient object provided by SAP CPQ. For creating a request body that can contain multiple content types such as strings, streams, and byte arrays, create new instances of StringContent, StreamContent, and MultiPartFormDataContent, which are already exposed.

Using System.Net

	

Using RestClient





import clr
clr.AddReference('System.Net')
from System.Text import Encoding
from System.Net import WebRequest

requestXmlByte = Encoding.UTF8.GetBytes(requestStr) 

webRequest = WebRequest.Create(baseUrl)
webRequest.Method = 'POST'
webRequest.ContentLength = requestXmlByte.Length
webRequest.ContentType = "text/xml"
soapAction = baseURL + "/API/3.0/CreateAndSendEnvelope"
webRequest.Headers.Add("SOAPAction", soapAction)
webRequest.Headers.Add("Authorization", "Bearer " + token)
requestStream = webRequest.GetRequestStream()
requestStream.Write(requestXmlByte, 0, requestXmlByte.Length)
requestStream.Close()

response = webRequest.GetResponse()
	


headers = { 
  "Authorization", "Bearer " + token,
  "SOAPAction":soapAction
          }

result = RestClient.Post(url, requestBody, headers, 'text/xml', False)

#in case of a specific encoding type use StringContent and Encodings enum e.g.
#stringContent = StringContent(requestStr, Encodings.UTF7, 'text/xml')
#content = MultiPartFormDataContent()
#content.Add(stringContent)
#result = RestClient.Post(url, headers, content)




import clr
clr.AddReference('System.Net')
from System.Text import Encoding
from System.Net import WebRequest

url = "https://http.cat/201"
request = WebRequest(url)
request.Method = 'GET'
response = request.GetResponse()
result = response.GetResponseStream()
	


url = "https://http.cat/201"
result = RestClient.GetStream(url, {})




import clr
clr.AddReference('System.Net')
from System.Text import Encoding
from System.Net import WebRequest, HttpWebRequest

url = baseUrl + '/basic/api/token'
request = WebRequest.Create(url)
request.Method = "POST"

bodyParameters = ["grant_type=password","username=username","password=#####","domain=domain","scope=configurations_admin"]
requestBody = '&'.join(bodyParameters)
data = Encoding.UTF8.GetBytes(requestBody)

request.ContentType = "application/x-www-form-urlencoded"
request.ContentLength = data.Length
requestStream = request.GetRequestStream()
requestStream.Write(data, 0, data.Length)
requestStream.Close()

response = StreamReader(request.GetResponse().GetResponseStream()).ReadToEnd()
	


url = baseUrl + '/basic/api/token'

bodyParameters = ["grant_type=password","username=username","password=#####","domain=domain","scope=configurations_admin"]
requestBody = '&'.join(bodyParameters)

response = RestClient.Post(url,requestBody,{},"application/x-www-form-urlencoded",False)

System.Net.Mail.SmtpClient
Instead of System.Net.Mail.SmtpClinet, you must use the SAP CPQ SmtpClient object and related methods.
Note

Using SAP CPQ SmtpClient, you should provide a host for sending emails. You will not be able to use the same host (IP address) that SAP CPQ uses for sending emails. If you got an error with the message:

You cannot use the same SMTP server host that SAP CPQ uses. Choose a different host name; this means you cannot use the same host as SAP CPQ for sending emails. In such a case, you would need to provide a different host for sending emails.

Using System.Net.Mail.SmtpClient

	

Using CPQ SmtpClient





import clr
clr.AddReference('System.Net')
from System.Net import Mail, NetworkCredential
from System.Net.Mail import SmtpClient, MailMessage, MailAddress

def sendMail(fromStr, fromUsername, toStr, toUsername, subjectStr, bodyStr):
    try:
        if fromStr != '' and toStr != '':
            mailAddrFrom = MailAddress(fromStr, fromUsername)
            mailAddrTo = MailAddress(toStr, toUsername)
            mailObj = MailMessage(mailAddrFrom, mailAddrTo)
            mailObj.IsBodyHtml = False
            mailObj.Subject = subjectStr
            mailObj.Body = bodyStr
            smtpServer = SmtpClient('SmtpServerHost', 587)
            smtpServer.Credentials = NetworkCredential('username', 'password')
            smtpServer.Send(mailObj)
    except:
        Trace.Write('Exception occurs inside sendMail function')
	


def sendMail(fromStr, fromUsername, toStr, toUsername, subjectStr, bodyStr):
    try:
        if fromStr != '' and toStr != '':
            mailAddrFrom = SmtpClient.CreateMailAddress(fromStr, fromUsername)
            mailAddrTo = SmtpClient.CreateMailAddress(toStr, toUsername)
            mailObj = SmtpClient.CreateMailMessage(mailAddrFrom, [mailAddrTo], subjectStr, bodyStr, True)
            credentials = SmtpClient.CreateNetworkCredential('username', 'password')
            SmtpClient.Send(mailObj, 'SmtpServerHost', 587, credentials, True)
    except:
        Trace.Write('Exception occurs inside sendMail function')

Base64 Encodings

Instead of using System.Convert to encode or decode strings to Base64, you can use the Convert object provided by SAP CPQ.

Using System.Convert

	

Using CPQ Convert





import clr
clr.AddReference('System')
from System import Convert
from System.Text import Encoding
	






plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'
	


plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'




plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'
	


plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'




plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'
	


plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'




plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'
	


plainTextBytes = Encoding.UTF8.GetBytes('some text')
base64EncodedData = Convert.ToBase64String(plainTextBytes) # base64EncodedData == 'c29tZSB0ZXh0'

base64EncodedBytes = Convert.FromBase64String(base64EncodedData)
plainText = Encoding.UTF8.GetString(base64EncodedBytes) # plainText == 'some text'

Webcom.Configurator
Instead of importing the Webcom.Configurator namespace to work with TestProduct, use the Product object provided by SAP CPQ. Also, there is no need to import Webcom.Configurator to create an instance of StreamReader since it is already available for use.
Note

Without using the CLR module, it is not possible to change tab to another non-visible tab. Also, it is not possible to change tab visibility via Python scripting. The only way to change tab visibility is by using formulas in Setup   Product Catalog   Edit Product  Add/Edit Tab  Tab visibility.

Using TestProduct

	

Using Product





import clr
clr.AddReference('Webcom.Configurator')
	






from Webcom.Configurator.Scripting.Test import TestProduct

if TestProduct().IsTabVisible('Tab 1'):
    TestProduct().ChangeTab('Tab 1')
	


if Product.IsTabVisible('Tab 1'):
    Product.ChangeTab('Tab 1')




from Webcom.Configurator.Scripting import StreamReader

result = StreamReader(stream).ReadToEnd()
	


result = StreamReader(stream).ReadToEnd()

Microsoft.Xrm.Sdk
There is no need to explicitly import the Microsoft.Xrm.Sdk namespace. If Microsoft CRM integration is turned on, then Microsoft.Xrm.Sdk namespace is already available and ready to use..

Using CLR Module

	

Without Using CLR Module





import clr
clr.AddReference('microsoft.xrm.sdk')
from Microsoft.Xrm.Sdk import *
clr.AddReference('Scripting')
from Crm.MSCrmService import *
import Crm.MSCrmService
	


# If Microsoft CRM integration is turned on,
# the following variables will be initialized and ready to use:
MSCrmServiceContext
MSCrmService
MSCRMOpportunityId
MSCRMUserId
sys module - alternatives
sys.exc_info
Instead of using the sys.exc_info() function to log the exception type, line number, and traceback details, you should pass the exception object to the Log.Error function like this:

Using sys.exc_info()

	

Using Log.Error(title, message, exception)





import sys

try:
    x = 2 / 0
except Exception as ex:
    exc_type, exc_obj, exc_tb = sys.exc_info()
    Log.Error("Python error", "Python error caught. Type {0} at {1} on line {2}: {3}".format(str(exc_type), exc_tb.tb_frame.f_code.co_name, exc_tb.tb_lineno, str(ex)))
	


try:
    x = 2 / 0
except Exception as ex:
    Log.Error("Python error", "Python error caught.", ex)
Related Information
Classes and Methods Used for Replacing CLR Module Import
On this page
IronPython Scripting: Alternatives to clr and sys modules
System.Linq
System.Collections.Generic
System.Array, System.Byte, System.DateTime, System.Decimal, System.Guid
System.String
System.Text
System.Globalization.CultureInfo
System.Xml
View all
Yes
No