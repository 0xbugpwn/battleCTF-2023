from pwn import *
from string import printable

"""
C0 = E(IV) ^ M0
C0' = E(IV) ^ M0'

so

C0' ^ C0 = M0 ^ M0'
=> M0 = C0' ^ C0 ^ M0'

CFB-8, so one byte is encrypted at a time
to get the next 16byte block of keystream, 
the ciphertext for that one byte is appended to the previous 15 bytes of the ct (or iv)
"""

flag = 'battleCTF'.encode()
conn = remote('chall.battlectf.online', 20001)
ct = bytes.fromhex(conn.recvline().decode())

while True:

	conn.sendlineafter(b'> ', flag + b'X' * (len(ct) - len(flag)))
	ct0 = bytes.fromhex(conn.recvline().decode())

	next_m = ct[len(flag)] ^ ct0[len(flag)] ^ ord('X')
	flag += bytes([next_m])
	print('flag:', flag.decode())
		
	if len(flag) == len(ct):
		break

conn.close()
