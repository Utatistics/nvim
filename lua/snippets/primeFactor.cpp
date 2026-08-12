using ll = long long;
using P = std::pair<ll, ll>;

auto prime_factorize(ll N) {
    std::vector<P> res;
    for (ll a = 2; a * a <= N; ++a) {
        if (N % a != 0) continue;
        ll p = 0; // exponent

        while (N % a == 0) { // until indivisible
            ++p;
            N /= a;
        }
        res.push_back({a, p});
    }

    if (N != 1) res.push_back({N, 1}); // append remaining
    return res;
}


