using ll = long long;

struct fenwickTree {
    int n;
    std::vector<ll> t; // internal array

    fenwickTree(int n) : n(n), t(n + 1, 0) {} // 0th index unused

    void update(int i, ll x) { // add x to index i
        while (i <= n) {
            t[i] += x;
            i += i & -i;
        }
    }

    ll query(int i) { // sum from 1 to i
        ll res = 0;
        while (i > 0) {
            res += t[i];
            i -= i & -i;
        }
        return res;
    }

    ll range(int l, int r) { // sum from l to r
        return query(r) - query(l - 1);
    }
};
