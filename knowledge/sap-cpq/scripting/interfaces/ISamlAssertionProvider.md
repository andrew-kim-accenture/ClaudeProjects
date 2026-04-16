# ISamlAssertionProvider

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/4a752693-5a57-44cd-890d-f748e6e609c1.htm

## Overview

SamlAssertionProvider serves to generate SAML assertions.

## Methods

### Generate(String profileName)
- **Returns:** String
- **Description:** Load existing profile and return SAML assertion payload based on it in base64 format.

### Generate(String profileName, Boolean encode)
- **Returns:** String
- **Description:** Load existing profile and return SAML assertion payload.
