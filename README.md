# caesar_cipher

This is an implementation of the caesar cipher script. Also included is a brute-force cipher breaker, which iterates through all 26 index shift encryptions and prints 26 possible phrases, and another (objectively worse) implementation of the cipher which uses a hash table rather than an array to map letters and their indices. 

The cipher breaker uses a regular expressions and a list of impossible english bigrams to selectively filter out non-english words. This filter greatly reduces the number of possible results. 

For example, the phrase "Hello, world! Nice to see you." with a cipher shift of 7 results in this encryption: "Olssv, dvysk! upjl av zll fvb." Without selective filtering, all 26 possible results are returned. However, using selective filtering results in 4 possible results.

Additionally, the more complex the phrase, the better the filter will work due the filter having more data to work on. For example, the phrase "Hello, world! Nice to see you. My name is Matt, and I am excited to show you how my cipher breaker works." with a cipher shift of 7 results in this encryption: "olssv, dvysk! upjl av zll fvb. tf uhtl pz thaa, huk p ht lejpalk av zovd fvb ovd tf jpwoly iylhrly dvyrz." Running the cipher breaker on this encrypted phrase results in only 1 answer, the original english phrase.
