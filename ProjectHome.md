In this project we implement Ko et al. and Anshel et al. key agreement protocols using Braid Groups as described in "Group Theory in Cryptography" by Simon R. Blackburn, Carlos Cid and Ciaran Mullan. Also we implement an attack to Ko et al. protocol.

In the implementation we use the Garside Normal Form. Due to the fact that going back and forth from an element in Bn to its normal form we restricted n to 4 to speed up our system.

The braids produced in each step of our implementation can be draw via functions which are used in ntubraids matlab library.

The implementation is done in Matlab2008b and it is not complete yet. Ko et al. protocol is implemented by cryptosystem.m and Anshel et al. by cryptosystem2.m.

