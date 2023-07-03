from Crypto.Cipher import AES
from Crypto.Util.Padding import pad
from os import urandom

iv = urandom(16)
key = urandom(16)
FLAG = b"battleCTF{m057_f4m0us_AES_0x0x0x}"

def encrypt(data):
    cipher = AES.new(key, AES.MODE_CFB, iv)
    return cipher.encrypt(pad(data, 16))


print(encrypt(FLAG).hex())
while True:
	print(encrypt(input("> ").encode()).hex())
