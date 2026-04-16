# ICryptography

**Namespace:** Scripting
**Type:** Interface
**Source:** https://help.sap.com/doc/6cbd2ad268f4444abbf41a52911c15e5/2603/en-US/Help/html/e243da7d-d4e3-7031-a4f9-51aa835768bf.htm

## Overview

Provides cryptographic operations including AES encryption/decryption and HMAC computation.

## Methods

### AesDecrypt(Byte[] data, Byte[] key, Byte[] iv, Encodings encoding)
- **Returns:** String
- **Description:** Decrypts data according to the Advanced Encryption Standard (AES).

### AesDecrypt(Byte[] data, String password, Byte[] salt, Encodings encoding)
- **Returns:** String
- **Description:** Decrypts data according to the Advanced Encryption Standard (AES).

### AesEncrypt(String data, Byte[] key, Byte[] iv, Encodings encoding)
- **Returns:** Byte[]
- **Description:** Encrypts data according to the Advanced Encryption Standard (AES).

### AesEncrypt(String data, String password, Byte[] salt, Encodings encoding)
- **Returns:** Byte[]
- **Description:** Encrypts data according to the Advanced Encryption Standard (AES).

### ComputeHashUsingHMAC(Byte[] data, Byte[] key, HMACHashFunction hashFunction)
- **Returns:** Byte[]
- **Description:** Computes the HMAC (Hash-based Message Authentication Code) of the given data using the specified hash function and key.

### GenerateRandomBytes(Int32 length)
- **Returns:** Byte[]
- **Description:** Generates a byte array of specified length filled with cryptographically secure random bytes.

### GetAesInitializationVector()
- **Returns:** Byte[]
- **Description:** Gets 128-bit AES initialization vector.

### GetAesKey()
- **Returns:** Byte[]
- **Description:** Gets 256-bit AES key.
