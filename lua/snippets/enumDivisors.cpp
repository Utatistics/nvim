std::vector<ll> enum_divisors(ll N) 

std::vector<ll> x;
for (ll i = 1; i * i <= N; ++i) { // O(√N)
    if (N % i == 0) {
        x.push_back(i);
        if (N / i != i) x.push_back(N / i); // avoid duplicates
    }
}
std::sort(x.begin(), x.end()); // if necessaryB
