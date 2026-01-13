# Encryption/Decryption Tool

A simple bash-based tool for encrypting and decrypting messages using AES-256-CBC encryption with OpenSSL.

## Prerequisites

- Bash shell
- OpenSSL (typically pre-installed on macOS and most Linux distributions)

To verify OpenSSL is installed:
```bash
openssl version
```

## Usage

### Encrypting a Message

Run the encryption script:
```bash
bash encrypt.sh
```

You will be prompted to:
1. Enter a message to encrypt
2. Provide a filename for the encrypted output
3. Enter a password (prompted by OpenSSL)

The script will create an encrypted file with your specified filename.

### Decrypting a Message

Run the decryption script:
```bash
bash decrypt.sh
```

You will be prompted to:
1. Enter the path to the encrypted file
2. Enter the password used during encryption (prompted by OpenSSL)

The decrypted message will be displayed in the terminal.

## Example Workflow

```bash
# Encrypt a message
$ bash encrypt.sh
enter a message:
Hello, this is a secret message!
enter a file name:
secret.enc
enter aes-256-cbc encryption password:
[enter password]
File encrypted successfully: secret.enc

# Decrypt the message
$ bash decrypt.sh
Enter the encrypted file:
secret.enc
enter aes-256-cbc decryption password:
[enter password]

Decrypted message:
Hello, this is a secret message!
```

## Technical Details

- **Encryption Algorithm**: AES-256-CBC
- **Key Derivation**: PBKDF2
- **Salt**: Automatically added during encryption
- **Tool**: OpenSSL command-line utility

## Security Notes

- Keep your passwords secure and never share them
- The encrypted files are only as secure as your password
- Use strong, unique passwords for each encrypted file
