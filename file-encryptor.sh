#!/bin/bash

# Function to encrypt a file
encrypt_file() {
  local input_file=$1
  local output_file=$2
  local password=$3

  openssl enc -aes-256-cbc -in "$input_file" -out "$output_file" -pass pass:"$password"
}

# Function to decrypt a file
decrypt_file() {
  local input_file=$1
  local output_file=$2
  local password=$3

  openssl enc -aes-256-cbc -d -in "$input_file" -out "$output_file" -pass pass:"$password"
}

# Prompt for the input file to encrypt
read -p "Enter the name of the file to encrypt: " input_file

# Prompt for the output encrypted file name
read -p "Enter the name of the encrypted file: " output_file

# Prompt for the password (input hidden for security)
read -s -p "Enter the password: " password
echo

# Encrypt the file
encrypt_file "$input_file" "$output_file" "$password"

# Display a message to the user
echo "The file has been encrypted."
