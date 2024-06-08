# File Encryption and Decryption Script

A simple bash script to encrypt and decrypt files using OpenSSL with AES-256-CBC encryption.

## Overview

This script allows you to encrypt a file using a specified password and save the encrypted file with a given name. It can also be used to decrypt files using the same password.

## Usage

1. **Download the Script:**

    Save the script to a file, e.g., `file-encryptor.sh`.

2. **Make the Script Executable:**

    ```bash
    chmod +x file-encryptor.sh
    ```

3. **Run the Script:**

    ```bash
    ./file-encryptor.sh
    ```

4. **Enter the Required Information:**

    You will be prompted to enter the name of the file to encrypt, the name of the encrypted file, and the password.

### Example Output

```
Enter the name of the file to encrypt: myfile.txt
Enter the name of the encrypted file: myfile.enc
Enter the password:
The file has been encrypted.
```

## Script Details

### Function `encrypt-file`

This function encrypts a given file using AES-256-CBC encryption.

- **Parameters:**
  - `$1`: The input file to be encrypted.
  - `$2`: The output encrypted file name.
  - `$3`: The password for encryption.

- **Example:**

    ```bash
    encrypt-file "myfile.txt" "myfile.enc" "mypassword"
    ```

### Function `decrypt-file`

This function decrypts a given file that was encrypted using AES-256-CBC encryption.

- **Parameters:**
  - `$1`: The input file to be decrypted.
  - `$2`: The output decrypted file name.
  - `$3`: The password for decryption.

- **Example:**

    ```bash
    decrypt-file "myfile.enc" "myfile.txt" "mypassword"
    ```

### Script Steps

1. **Prompt for the Input File:**

    The script prompts the user to enter the name of the file to encrypt.

    ```bash
    read -p "Enter the name of the file to encrypt: " input_file
    ```

2. **Prompt for the Output File:**

    The script prompts the user to enter the name of the encrypted file.

    ```bash
    read -p "Enter the name of the encrypted file: " output_file
    ```

3. **Prompt for the Password:**

    The script prompts the user to enter the password (input is hidden for security).

    ```bash
    read -s -p "Enter the password: " password
    echo
    ```

4. **Encrypt the File:**

    The script calls the `encrypt-file` function to encrypt the file.

    ```bash
    encrypt-file "$input_file" "$output_file" "$password"
    ```

5. **Display Confirmation:**

    The script displays a message indicating that the file has been encrypted.

    ```bash
    echo "The file has been encrypted."
    ```

## Dependencies

- `openssl`: Ensure the `openssl` utility is installed and available on your system.

    - On Debian/Ubuntu:

        ```bash
        sudo apt-get install openssl
        ```

    - On CentOS/RHEL:

        ```bash
        sudo yum install openssl
        ```

    - On macOS:

        ```bash
        brew install openssl
        ```
 in the same directory as your script.
