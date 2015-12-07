# caesar_cipher

This is an implementation of a caesar cipher in Ruby.. Also included is a brute-force cipher breaker.

The cipher breaker uses a regular expressions and a list of impossible english bigrams to selectively filter out non-english words. This filter greatly reduces the number of possible results. 

For example, the phrase "Hello, world! Nice to see you." with a cipher shift of 7 results in this encryption: "Olssv, dvysk! upjl av zll fvb." Without selective filtering, all 26 possible results are returned. However, using selective filtering results in 4 possible results.

Additionally, the more complex the phrase, the better the filter will work due the filter having more data to work on. For example, the phrase "Hello, world! Nice to see you. My name is Matt, and I am excited to show you how my cipher breaker works." with a cipher shift of 7 results in this encryption: "olssv, dvysk! upjl av zll fvb. tf uhtl pz thaa, huk p ht lejpalk av zovd fvb ovd tf jpwoly iylhrly dvyrz." Running the cipher breaker on this encrypted phrase results in only 1 answer, the original english phrase.
