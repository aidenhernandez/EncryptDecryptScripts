#!/bin/bash

#prompt the user for a message and password
echo "enter a message:"
read user_message

# echo "Please enter a password:"
# read user_password

echo "enter a file name:"
read output_file
# output_file = "message.enc"

echo "$user_message" | openssl enc -aes-256-cbc -salt -pbkdf2 -out "$output_file"

if [ $? -eq 0 ]; then
    echo "File encrypted successfully: $output_file"
else
    echo "Encryption failed!"
    exit 1
fi

