# IWebServiceHelper

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/11ffd861-96d2-5b4e-58e5-6867a0c1ed83.htm

## Overview

Web service helper class.

## Methods

### Load(String url)
- **Returns:** dynamic
- **Description:** Loads web service proxy for the specified URL.

### Load(String url, String provider)
- **Returns:** dynamic
- **Description:** Loads proxy for URL with provider support (Wsdl, Rest, or Rss).

### Load(String url, String provider, String securityUrl)
- **Returns:** dynamic
- **Description:** Loads proxy with security URL and provider support.

### Load(String url, String provider, String securityUrl, String credentials)
- **Returns:** dynamic
- **Description:** Loads proxy with user credential parameters and provider support.

### LoadImportedWsdlService(String serviceName)
- **Returns:** dynamic
- **Description:** Loads imported WSDL service.

### LoadSvcService(String url)
- **Returns:** dynamic
- **Description:** Loads SVC service for the specified URL.

### LoadSvcService(String url, String securityMode)
- **Returns:** dynamic
- **Description:** Loads SVC service with basic HTTP security mode.

### LoadSvcService(String url, String securityMode, String endpoint)
- **Returns:** dynamic
- **Description:** Loads SVC service with security mode and endpoint.

### LoadSvcService(String url, String securityMode, String endpoint, String credentials)
- **Returns:** dynamic
- **Description:** Loads SVC service with security and username/password.

### LoadSvcService(String url, String binding, String securityMode, String endpoint, String password)
- **Returns:** dynamic
- **Description:** Loads SVC service with binding, security, and credentials.
