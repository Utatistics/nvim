class Monoid {
public:
    int unit;
    Monoid() { unit = 0; } // identity element
    int calc(int a, int b) { return a + b; }
};

class SegTree {
public:
    int n;
    std::vector<int> tree;
    Monoid mono;

    SegTree(std::vector<int> &v) {
        n = 1 << (int)std::ceil(std::log2(v.size()));
        tree = std::vector<int>(n << 1);

        for(int i = 0; i < (int)v.size(); i++)
            update(i, v[i]);
        for(int i = v.size(); i < n; i++)
            update(i, mono.unit);
    }

    void update(int k, int x) { // update kth with x
        k += n;
        tree[k] = x;
        for(k = k >> 1; k > 0; k >>= 1){
            tree[k] = mono.calc(tree[k << 1 | 0], tree[k << 1 | 1]);
        }
    }

    int query(int l, int r) { // return [l, r), 0-origin
        int res = mono.unit;
        l += n;
        r += n;
        while(l < r) {
            if(l & 1) {
                res = mono.calc(res, tree[l++]);
            }
            if(r & 1) {
                res = mono.calc(res, tree[--r]);
            }
            l >>= 1;
            r >>= 1;
        }
        return res;
    }

    int operator[](int k) { // return st[k], 0-origin
        return tree[tree.size() - n + k];
    }
};
