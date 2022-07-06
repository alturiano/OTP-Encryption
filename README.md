# OTP-Encryption

[![Na|solid](https://img.shields.io/badge/license-GPL-brightgreen)](https://github.com/alturiano/OTP-Encryption/blob/master/LICENSE)

This is an encryption/decryption **poc** written in C based on one-time pad **(OTP) encryption**. The program essentially XOR's two files (source file & key file) together to create the cipherfile (output file). The key file must be at least as long as the source file. If you want to use an offset then the key file must be at least as long as **sourcefile + offset**.

**One-time pad encryption is theoretically [unbreakable](https://en.wikipedia.org/wiki/One-time_pad) when used correctly.**

# Usage

### Linux and MacOS
Compile OTP.c with **gcc**:

    gcc OTP.c -o OTP

Make the file executable:

    chmod +x OTP

Then execute:

    ./OTP <sourcefile> <outputfile> <keyfile> <offset (default 0)>

### Docker
----
Build the container in root of the repository:

    docker build -t otp-encryption .

Run the containter in the root of the repository. The files you want to encrypt/decrypt should be on the root of the repository as well:

##### Linux/MacOS/Powershell
    docker run -v ${PWD}:/home otp-encryption <sourcefile> <outputfile> <keyfile> <offset (default 0)>

### Modes
----
##### Encryption Mode
`<sourcefile>` is the file you want to encrypt, `<outputfile>` is the file that would eventually be encrypted, `<keyfile>` or pad file is the encryption key, `<offset (default 0)>` to start the encryption with x bytes offset from the first byte on the keyfile.

##### Decryption Mode
`<sourcefile>` is the encrypted file you want to decrypt, `<outputfile>` is the file that would be eventually decrypted to plain text, `<keyfile>` or pad file is the key that was used to encrypt the original file, `<offset (default 0)>` the offset used to encrypt the original file

# Other Versions

There is a python version version [here](https://github.com/alturiano/pyOTP-Encryption).

This project was Originally forked from https://github.com/PrivacyProject/OTP-Encryption.

