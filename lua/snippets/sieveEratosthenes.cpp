std::vector<bool> sieveEratosthenes(int n) { // identify primes up to n *O(N log log N)
    std::vector<bool> isPrime(n + 1, true); // mark all as prime

    isPrime[0] = false;
    isPrime[1] = false;

    for (int p = 2; p * p <= n; ++p) {
        if (!isPrime[p]) continue;
        for (int q = p * p; q <= n; q += p) {
            isPrime[q] = false;
        }
    }
    return isPrime;
}

