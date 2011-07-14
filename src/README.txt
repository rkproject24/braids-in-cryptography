To run this implementation you should use Matlab version 2008b & later.

To run Ko et al. protocol type cryptosystem in Matlab command line.
The output will be something line this:

>> cryptosystem
Ko et al. protocol
 
Encryption...
Alice: chossing a...
a=\sigma_{1}^{-3}
Alice: calculating a^{-1}ga...
a^{-1}ga=\sigma_{1}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-2}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-2}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{1}^{2}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}^{2}\sigma_{1}^{2}\sigma_{2}
Bob: chossing b...
b=\sigma_{3}^{4}
Bob: calculating b^{-1}gb...
b^{-1}gb=\sigma_{1}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-2}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-2}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-2}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{3}^{-1}\sigma_{2}^{-1}\sigma_{1}^{-1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}^{4}
 
Decryption...
Alice: calculating key...
key=a^{-1}(b^{-1}gb)a=\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{1}^{2}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}^{2}\sigma_{1}^{2}\sigma_{2}\sigma_{3}^{4}
Bob: calculating key...
key=b^{-1}(a^{-1}ga)b=\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{3}\sigma_{1}^{2}\sigma_{2}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}^{2}\sigma_{1}^{2}\sigma_{2}\sigma_{3}^{4}
Eve: calculating a
Eve: calculating key...
key=\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}\sigma_{2}^{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{3}^{8}

You will notice that the program delay to evaluate Eve's function.
If you set dflag to 1 all braids calculated will be braw.

In a similar way, to run Anshel et al. protocol type cryptosystem2 in Matlab command line.
The output will be something line this:

>> cryptosystem2
Anshel et al. Protocol
 
Encryption...
Alice: chossing x...
x=a_{2}=\sigma_{2}^{-1}
Alice: calculating b_i^{x}...
b_{1}^{x}=\sigma_{1}\sigma_{2}
b_{2}^{x}=\sigma_{2}\sigma_{3}^{2}
b_{3}^{x}=\sigma_{2}\sigma_{3}
b_{4}^{x}=\sigma_{1}^{-1}\sigma_{1}^{2}
b_{5}^{x}=\sigma_{2}\sigma_{1}^{-1}\sigma_{2}^{-1}
b_{6}^{x}=\sigma_{1}\sigma_{2}\sigma_{2}^{-1}
b_{7}^{x}=\sigma_{2}^{-1}\sigma_{1}^{-2}
b_{8}^{x}=\sigma_{2}^{-1}\sigma_{1}\sigma_{3}
Bob: chossing y...
y=b_{7}=\sigma_{2}^{-1}\sigma_{1}^{-2}
Bob: calculating a_i^{y}...
a_{1}^{y}=\sigma_{2}\sigma_{2}^{-1}
a_{2}^{y}=\sigma_{2}^{-1}
a_{3}^{y}=\sigma_{1}\sigma_{2}^{2}
a_{4}^{y}=\sigma_{1}^{-1}\sigma_{2}^{2}
a_{5}^{y}=\sigma_{2}\sigma_{1}^{-2}
a_{6}^{y}=\sigma_{2}^{-1}\sigma_{3}
a_{7}^{y}=\sigma_{1}^{-1}\sigma_{2}^{-1}
 
Decryption...
Alice: calculating key...
key=\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{3}\sigma_{1}^{3}\sigma_{2}
Bob: calculating key...
key=\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}\sigma_{2}\sigma_{1}\sigma_{3}\sigma_{2}\sigma_{1}^{2}\sigma_{2}\sigma_{3}\sigma_{1}^{3}\sigma_{2}
Eve: does not do anything yet!
