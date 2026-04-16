# Single Sign-On | SAP Help Portal

**Source:** https://help.sap.com/docs/SAP_CPQ/551616e85ad64739835aa69241222f53/0a44cc551cda482c971cf742f2672a8b.html?locale=en-US&state=PRODUCTION&version=2603
**Crawled:** 2026-04-16

## Content

SAP CPQ User GuideVersion: 2603English
Provide feedback on our search

	
Who is this Guide for?
	
Add Items in Bulk
	
Approval Process
	
Quote Creation
	
Document Generation Journey
	
Load Existing Quotes
	
Quote
	
User Page
	
Register as New User
	
Favorites
	
Accessibility
	
Unlock Account
	
Single Sign-On
	
Effective Date
	
CRM Integration Use
	
Quote Collaboration/Comments
	
Revision Management
	
Compare Quotes and Revisions (Quote 2.0)
	
Formula Validator
	
Manage Customers
Single Sign-On

Single Sign-On is accessed through the /sso/Login.aspx page.

This page accepts 2 request parameters:

u – username encrypted using AES (with a special algorithm while encrypting – c#code included).

If passing the parameter as a query string as in the example below, you may have to URLEncode it (for example using C# - Server.UrlEncode(strEncryptedUsername)). If you’re passing it through a form and posting it, it should be good without RLEncode.

d – domain name. Unencrypted domain name. If omitted, default domain is assumed.

The following is an example of a URL:

https://www.example.com/support/sso/Login.aspx?u=daksdhaUpq2nP/5gZw==&d=somedomain

To set up the encryption or decryption, the same key and init vector have to be used for encryption on client side and for decryption on SAP CPQ side. Two new application parameters have to be added to SAP CPQ. The SAP CPQ team has to add these parameters to your domain:

Name: SSO_TDES_KEY

Value: CC0D3f@u17k3Y

Name: SSO_TDES_IV

Value: c0mV3C7

Note

Values can be anything. The provided values are examples only.

Single Sign-On Using Advanced Encryption Standard (AES) Encryption
A third party submits a request to an SSO page passing the username and domain (optional) information as parameters encrypted in AES. The WebSource SAP CPQ decrypts the parameters and attempt to log on that user. Here is an example of the implementation of the encryption from SAP CPQ:
C# Example


using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;
...
public string Key = "anuniquekey"; //This is a key we have to
exchange. Same key has to be used for encrypting and decrypting
public string InitVector = "s0me1V3c7or"; //This is a init vector
we have to exchange. Same key has to be used for encrypting and decrypting
 
public string SymmetricCrypt(SymmetricAlgorithm alg, string msg)
{
            if (msg == null) return "null";
            if (msg == "") return "";
 
            if (String.IsNullOrEmpty(this.Key))
                throw new Exception("Key must not be empty");
            if (String.IsNullOrEmpty(this.InitVector))
                throw new Exception("Init vector must not be empty");
 
            // * 8 cause we are using ASCII
            string longKey = this.Key;
            while ((longKey.Length * 8) < alg.LegalKeySizes[0].MinSize)
                longKey += this.Key;
            longKey = longKey.Substring(0, (alg.LegalKeySizes[0].MinSize / 8));
 
            string longIv = this.InitVector;
            while ((longIv.Length * 8 < alg.LegalBlockSizes[0].MinSize))
                longIv += this.InitVector;
            longIv = longIv.Substring(0, alg.LegalBlockSizes[0].MinSize / 8);
 
            // add some random prefix that will be striped in decrypt to maximize differences in chipers
            Random rnd = new Random((int)DateTime.Now.Ticks);
            msg = rnd.Next(0, 9).ToString() + rnd.Next(0, 9).ToString() + msg;
 
            byte[] key = Encoding.ASCII.GetBytes(longKey);
            byte[] iv = Encoding.ASCII.GetBytes(longIv);
            alg.Mode = CipherMode.CBC;
            alg.Key = key;
            alg.IV = iv;
 
            string result = "";
            ICryptoTransform tra = alg.CreateEncryptor(alg.Key, alg.IV);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, tra, CryptoStreamMode.Write))
                {
                    using (StreamWriter sw = new StreamWriter(cs))
                    {
                        sw.Write(msg);
                    }
                }
                byte[] chip = ms.ToArray();
                result = Convert.ToBase64String(chip);
            }
            return result;   
}

Now, to call it:


SymmetricAlgorithm alg = new AesCryptoServiceProvider();
string result = SymmetricCrypt(alg, "MessageToEncrypt");
SymmetricAlgorithm and AesCryptoServiceProvider are part of System.Security.Cryptography.
Java Example


import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import junit.framework.TestCase;
import org.apache.catalina.util.URLEncoder;
 
public class AESforCPQTest extends TestCase {
 
    static final String SSO_TDES_KEY = "CC0D3f@u17k3Y";  
    static final String SSO_TDES_IV = "c0mV3C7";
    static final int KEY_LENGHT = 16;
    static final int IV_LENGTH = 8;
 
    public void testCreateString() throws Exception {
        String enryptedMsg = encrypt("jsmith");
        assertEquals("m7YvzMGQegWOKPl4ExDW3A==", enryptedMsg);
        URLEncoder urlEncoder = new URLEncoder();
        String encodedMsg = urlEncoder.encode(enryptedMsg);
        assertEquals("m7YvzMGQegWOKPl4ExDW3A%3D%3D", encodedMsg);
    }
 
    private String encrypt(String msg) throws Exception {
        StringBuffer keySB = new StringBuffer(SSO_TDES_KEY);
        StringBuffer initialVectorSB = new StringBuffer(SSO_TDES_IV);
 
        while (keySB.length() < KEY_LENGHT)
            keySB.append(SSO_TDES_KEY);
        String key = keySB.substring(0, KEY_LENGHT);
 
        key = key + key.substring(0, 8);  // In Java, we need the key to be 24 bytes long.
 
        while (initialVectorSB.length() < IV_LENGTH)
            initialVectorSB.append(SSO_TDES_IV);
        String initialVector = initialVectorSB.substring(0, IV_LENGTH);
 
        final byte[] keyASCIIBytes = key.getBytes("ASCII");
        final byte[] initialVectorASCIIBytes = initialVector.getBytes("ASCII");
 
        final Cipher cipher = Cipher.getInstance("DESede/CBC/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE,
                    new SecretKeySpec(keyASCIIBytes, "DESede"),
                    new IvParameterSpec(initialVectorASCIIBytes));
 
        final byte[] cipherText = cipher.doFinal(("11" + msg).getBytes("ASCII")); 
                                    // In the real world, "11" should be replaced with 2 random characters.
        return new sun.misc.BASE64Encoder().encode(cipherText);
    }
 
}

Yes
No