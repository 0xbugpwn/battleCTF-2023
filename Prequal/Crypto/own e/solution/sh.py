from math import gcd
from pwn import *

r = remote('chall.battlectf.online', 20000)

def decrypt(data):
    out = []
    i = 0
    for pin in data:
        out.append( str((int(pin) ^ i) - 5) )
        i+=1
    return eval("".join(out))
    
def getencrypt(e):
    r.recvuntil(b'\nEnter your e: ')
    r.sendline(str(e).encode())
    r.recvuntil(b'c = ')
    c = eval(r.recvline().decode())
    return c

c1, c2, c3 = decrypt(getencrypt(-1)), decrypt(getencrypt(-2)), decrypt(getencrypt(-3))

Q1 = b'The invite token is ' + b'\0'*128 + b' and it is encrypted with e = -1.'
Q2 = b'The invite token is ' + b'\0'*128 + b' and it is encrypted with e = -2.'
Q3 = b'The invite token is ' + b'\0'*128 + b' and it is encrypted with e = -3.'

Q1, Q2, Q3 = [int.from_bytes(µ, 'big') for µ in [Q1, Q2, Q3]]

n = gcd(
    c2 * (Q2 * c1 + 1 - Q1 * c1)**2 - c1**2,
    c3 * (Q3 * c1 + 1 - Q1 * c1)**3 - c1**3
)

for k in range(2, 1000):
    while n % k == 0:
        n //= k

secret = pow(256, -33, n) * (pow(c1, -1, n) - Q1) % n
assert secret < 256**128
secret = int.to_bytes(secret, 128, 'big')

r.sendline(secret)

r.interactive()
