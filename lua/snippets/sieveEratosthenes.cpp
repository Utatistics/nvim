std::vector<bool> sieveEratosthenes(int n) { // O(N log log N)
    std::vector<bool> isPrime(n + 1, true); // 1 origin, mark all as prime
    std::vector<int> minPrimeFactor(N + 1, -1); // the smallest prime divisor of i
    
    isPrime[1] = false;
    minPrimeFactor[1] = 1;

    for (int p = 2; p <= n; ++p) {
        if (!isPrime[p]) continue;
        minPrimeFactor[p] = p;

        for (int q = p * 2; q <= n; q += p) { // update as per p's multiples
            isPrime[q] = false; // q is not prime, a compsite of p
            if (minPrimeFactor[q] == -1) minPrimeFactor[q] = p; // p divides q
        }
    }
    return isPrime;
}
