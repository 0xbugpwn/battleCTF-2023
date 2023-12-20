from pwn import *
from string import printable


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
