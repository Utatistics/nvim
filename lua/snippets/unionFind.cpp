struct UnionFind {
    std::vector<int> p; // parent

    UnionFind(int N) : p(N) {
        for (int i = 0; i < N; i++) p[i] = i; // declare all nodes as root
    }

    int root(int x) {
        if (p[x] == x) return x;
        return p[x] = root(p[x]);
    }

    void unite(int x, int y) {
        int rx = root(x);
        int ry = root(y);

        if (rx == ry) return;
        p[rx] = ry;
    }

    bool same(int x, int y) {
        return root(x) == root(y);
    }
};

