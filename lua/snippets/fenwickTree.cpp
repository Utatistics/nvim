using ll = long long;

struct fenwickTree {
    int N;
    std::vector<ll> A; // internal array

    fenwickTree(int n) : N(n), A(n + 1, 0) {} // 0th index unused

    void update(int i, ll x) { // add x to index i
        while (i <= N) {
            A[i] += x; // iterative update
            i += i & -i; // add LSBs to get next index
        }
    }

    ll query(int i) { // sum from 1 to i
        ll s = 0; 
        while (i > 0) {
            s += A[i]; // iterative addition to cumsum
            i -= i & -i; // substruct LSBs to get next index
        }
        return s;
    }

    ll range(int l, int r) { // sum from l to r
        return query(r) - query(l - 1);
    }
};
