#!/bin/bash

echo "Enter the encrypted file: "
read encrypted_file

if [ ! -f "$encrypted_file" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Decrypt and display the message
decrypted=$(openssl enc -aes-256-cbc -d -pbkdf2 -in "$encrypted_file")

if [ $? -eq 0 ]; then
    echo ""
    echo "Decrypted message:"
    echo "$decrypted"
else
    echo "decrypted failed"
    exit 1
fi