# IMailMessage

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/19f5783b-7b84-f727-1c39-b2d7d3b7da1c.htm

## Overview

Used by SmtpClient to facilitate email transmission within SAP CPQ scripting.

## Properties

| Name | Type | Description |
|------|------|-------------|
| Attachments | ICollection\<IAttachment\> | Gets the attachment collection used to store data attached to this email message |
| Body | String | Gets the message body |
| From | IMailAddress | Gets the from address for this email message |
| IsBodyHtml | Boolean | Gets a value indicating whether the mail message body is in HTML |
| Subject | String | Gets the subject line for this email message |
| To | ICollection\<IMailAddress\> | Gets the address collection that contains the recipients of this email message |
