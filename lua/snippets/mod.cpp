// mathematical modulo (safely assume [0, b-1])
int mod(int a, int b) {return (a % b + b) % b;}

ll modpow(ll a, ll n) { // a ^ N (mod MOD) 
    ll x = 1;

    while (n > 0) { // e.g. a^13 = a^0 * a^4 * a^8
        if (n & 1) x = x * a % MOD; // if lowest binary active -> x *= a
        a = a * a % MOD;
        n >>= 1; // shift to next binary
    }
    return x;
}
