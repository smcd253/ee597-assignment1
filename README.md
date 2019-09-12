### ee597-assignment1
Modeling bit error with M-PSK and fitting the simple path loss model to collected data.

## Sources
* bit error for various schemes in matlab: https://www.mathworks.com/help/comm/ug/bit-error-rate-ber.html#fp12932
* bit error calculation theory: https://www.unilim.fr/pages_perso/vahid/notes/ber_awgn.pdf
  
## Comments

### Problems 1 and 2

**Figure 1** - Probability of Error for BPSK Modulation
![](p1_bpsk_results.png)

By plotting simulation of BPSK, we can see that the sumulated error curve (with respect to
SNR) stays very close to the theortical expression curve. This is because the theoretical expression
Pb = Q(sqrt(2*SNR)), where SNR = Eb/N0, is an accurate approximation for the BPSK bit error rate (BER).

**Figure 2** - Probability of Error for 4-PSK Modulation with Sequential Encoding
![](p2_4psk_seq_results.png)

However, as we can see after plotting 4-PSK over the same SNR range, the 4-PSK simulated BER for sequential encoding
follows the  same order as the theoretical expression given for BPSK, but with a higher y-intercept. This is 
because the BPSK theoretical expression is an adequate approximation for 4-PSK, but not as accurate as it is
for BPSK. This fact can be found in the above source "bit error calculation theory."

**Figure 3** - Probability of Error for 4-PSK Modulation with Gray Encoding
![](p2_4psk_gray_results.png)

We can make a slight improvement on the behavior of 4-PSK by changing our encoding scheme to gray-coding. This
minimizes our chance of 2-bit errors, and as we can see on the resulting plot, the simulated BER converges
to the theoretical BER at higher SNRs.

### Problem 3

