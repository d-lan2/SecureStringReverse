# SecureStringReverse
A powershell script to reverse the powershelll secure string back to plain text

# Usage
See comments in the powershell script

# How to identify a secure string vs say a regular password hash? 

When a SecureString is exported to a text file, it is often serialized in a format that represents an encrypted, secure object. The most common method for exporting a SecureString is using ConvertFrom-SecureString, which serializes it to a base64-like encoded string. Here's an example:

```01000000d08c9ddf0115d1118c7a00c04fc297eb010000006e86ba77ab8d8d478a7...```

Characteristics of a PowerShell SecureString:
- Typically starts with "01000000" (indicating that it is an encrypted DPAPI blob).
- The length is usually much longer than typical password hashes, spanning hundreds of characters.
- Contains alphanumeric characters (A-F, 0-9) but usually no special characters.
- It is encoded as a long hexadecimal or base64-like string.
