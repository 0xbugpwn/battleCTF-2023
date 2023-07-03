import random
flag = 'battleCTF{Maths_W1th_Gauss_0x0x0x}'
a = random.randint(4,9999999999)
b = random.randint(4,9999999999)
c = random.randint(4,9999999999)
d = random.randint(4,9999999999)
e = random.randint(4,9999999999)

enc = []
for x in flag:
    res = (2*a*pow(ord(x),4)+b*pow(ord(x),3)+c*pow(ord(x),2)+d*ord(x)+e)
    enc.append(res)
print(enc)
