# encrypt-decrypt

This script will prompt you for the name of the file to encrypt, the name of the encrypted file, and the password. The file will then be encrypted and saved to the specified location.

Here are some additional notes about the script:

- The openssl library is used to encrypt and decrypt the files.
- The aes-256-cbc cipher is used to encrypt the files.
- The password is passed to the openssl command as a secure string.
- The read command is used to get input from the user.
- The echo command is used to display messages to the user.
