ll expBySquare(ll k, ll n, int mod){
    ll res = 1;
    while(n > 0){
        if(n & 1) res = res * k % mod;
        k = k * k % mod;
        n >>= 1;
    }
    return res;
}
