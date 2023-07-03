def decrypt(ciphertext, key):
    decrypted = ""
    for char in ciphertext:
        if char.isalpha():
            if char.islower():
                decrypted += chr((ord(char) - 97 - key) % 26 + 97)
            else:
                decrypted += chr((ord(char) - 65 - key) % 26 + 65)
        else:
            decrypted += char
    return decrypted



encrypted_message = "qpiiatRIU{Pvqp_Ugt3_UDDS_Stn_d0D!_85864r1277qu8195pqqtp6540494pr46}" 
flag = decrypt(encrypted_message, 15)

print("FLAG:", flag)
