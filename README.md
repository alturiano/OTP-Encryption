OTP-Encryption
=====================

A small encryption/decryption program for Linux that utilises one-time pads. The program essentially XOR's two files together to create a cipherfile.

While not algorithm based, one-time pad encryption is theoretically unbreakable when used correctly.

Background
=====================

As a quick search on Wikipedia will tell you "the one-time pad (OTP) is a type of encryption that is impossible to crack if used correctly. Each bit or character from the plaintext is encrypted by a modular addition with a bit or character from a secret random key (or pad) of the same length as the plaintext, resulting in a ciphertext. If the key is truly random, at least as long as the plaintext, never reused in whole or part, and kept secret, the ciphertext will be impossible to decrypt or break without knowing the key".

Purpose
=====================

The purpose of this project is to create a program that is simple and uncomplicated to use (though making the one time pad truly secure [read random] is arguably no trivial matter), reliable and most importantly trustworthy and available for everyone, thus facilitating correct use of one-time pad encryption.


CONTRIBUTIONS
=====================

Originally forked from https://github.com/PrivacyProject/OTP-Encryption
The new changes made:

Version 1.3 
	- Add offset argument (default: 0)
    - Removed mlockall to run on MAcOS
    - Removed choice to delete files