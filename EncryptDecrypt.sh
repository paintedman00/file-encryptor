#!/bin/bash

# Import library.
openssl

function encryptFile() {
  local input_file=$1
  local output_file=$2
  local password=$3

  openssl enc -aes-256-cbc -in $input_file -out $output_file -pass pass:$password
}

function decryptFile() {
  local input_file=$1
  local output_file=$2
  local password=$3

  openssl enc -aes-256-cbc -d -in $input_file -out $output_file -pass pass:$password
}

# Get the input file from the user.
read -p "Enter the name of the file to encrypt: " input_file

# Get the output file from the user.
read -p "Enter the name of the encrypted file: " output_file

# Get the password from the user.
read -s -p "Enter the password: " password

# Encrypt the file.
encryptFile $input_file $output_file $password

# Display a message to the user.
echo "The file has been encrypted."
