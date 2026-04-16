# ISmtpClient

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/d0f02fec-a789-bc78-869a-3fe57376d81b.htm

## Overview

The SmtpClient object is used to send emails through scripting.

## Methods

### CreateAttachment()
- **Returns:** IAttachment
- **Description:** Creates an instance of Attachment.

### CreateMailAddress()
- **Returns:** IMailAddress
- **Description:** Creates an instance of MailAddress.

### CreateMailMessage(IMailAddress from, IEnumerable\<IMailAddress\> to, String subject, String body, Boolean isBodyHtml)
- **Returns:** IMailMessage
- **Description:** Creates an instance of MailMessage.

### CreateMailMessage(IMailAddress from, IEnumerable\<IMailAddress\> to, String subject, String body, Boolean isBodyHtml, IEnumerable\<IAttachment\> attachments)
- **Returns:** IMailMessage
- **Description:** Creates an instance of MailMessage with attachments.

### CreateNetworkCredential()
- **Returns:** INetworkCredential
- **Description:** Creates an instance of NetworkCredential.

### Send(IMailMessage message, String smtpHost)
- **Returns:** void
- **Description:** Sends the specified message to an SMTP server for delivery.

### Send(IMailMessage message, String smtpHost, Int32 port, INetworkCredential credential, Boolean enableSsl)
- **Returns:** void
- **Description:** Sends the specified message to an SMTP server for delivery with authentication.
