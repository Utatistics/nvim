ll r = N; // remainder
std::vector<ll> p; // prime factors

for (ll i = 2; i * i <= r; i++) {
    while (r % i == 0) {
        r /= i;
        p.push_back(i);
    }
}

if (r != 1LL) p.push_back(r);
