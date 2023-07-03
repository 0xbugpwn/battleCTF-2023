from Crypto.PublicKey import RSA
from Crypto.Util.number import *
from base64 import b64decode

pubkey = RSA.importKey(open("pub.pem").read())
e = pubkey.e
n = pubkey.n
d = 3500250248327349941672136790330322298173940781772211260089535710561387481696840724462501857940708289682233561164220235784490548878094466708830359320737536288891004163888989356033042963942046798938832323366063912548832619743354798758989171488234685790832327326369684099122228433857463369589017055427083655546629869448560863558252541573729181294198925126252806108158471450212498376272391643662951937867203907881541852521739527440641096867158947718038717211827677824862115138300242300421747601306316869658769565879739394458142873158790249493313154357342610957929927393333582078957693189916431285660748179207993771566093
print("e :", e)
print("n :", n)
print("d :", d)

with open("flag.enc", "rb") as f:
    cipher = f.read()
c = bytes_to_long(b64decode(cipher))
print(long_to_bytes(pow(c, d, n)))