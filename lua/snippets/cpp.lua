local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Binary Search
  s("binarySearch", {
    t({
      "int binary_search(int key) {",
      "    int left = -1; // i = 0 does not always satisfy condition",
      "    int right = (int)a.size();",
      "    while (right - left > 1) {",
      "        int mid = left + (right - left) / 2;",
      "        if (solve(mid, key)) right = mid; // solve defined elsewhere",
      "        else left = mid;",
      "    }",
      "    return right;",
      "}",
    }),
  }),

  -- DFS
  s("dfs", {
    t({
      "void dfs(int x, const std::vector<std::vector<int>> &adj, std::vector<bool> &status) {",
      "    if (status[x]) return;",
      "    status[x] = true; // visited",
      "",
      "    for (auto neighbor : adj[x]) {",
      "        // logic here",
      "        dfs(neighbor, adj, status);",
      "    }",
      "}",
    }),
  }),

  -- BFS
  s("bfs", {
    t({
      "void bfs(int s, const std::vector<std::vector<int>> &adj, std::vector<bool> &status) {",
      "    std::queue<int> q;",
      "    status[s] = true;",
      "    q.push(s);",
      "",
      "    while (!q.empty()) {",
      "        int x = q.front(); q.pop();",
      "",
      "        for (auto neighbor : adj[x]) {",
      "            if (status[neighbor]) continue; // ignore if visited",
      "            status[neighbor] = true; // visited",
      "            // logic here",
      "            q.push(neighbor);",
      "        }",
      "    }",
      "}",
    }),
  }),
    
  -- Dijkstra
  s("dijkstra", {
    t({
      "static const int MAX = 1e9; // change if required",
      "using P = std::pair<int, int>; // {to, cost} *change if required",
      "",
      "std::vector<int> dijkstra(int s, int t, std::vector<std::vector<P>> &adj) { // O(E * logV)",
      "    int n = adj.size();",
      "",
      "    std::vector<int> d(n); // distance array",
      "    for (int i = 0; i < n; i++) d[i] = (i == s) ? 0 : MAX;",
      "",
      "    std::vector<int> parent(n, -1); // prev node on shortest path",
      "",
      "    std::priority_queue<P, std::vector<P>, std::greater<P>> pq; // min heap required",
      "    pq.push({0, s}); // (distance, vertex)",
      "",
      "    while (!pq.empty()) {",
      "        auto p = pq.top();",
      "        int dist = p.first;",
      "        int u = p.second;",
      "        pq.pop();",
      "",
      "        if (dist > d[u]) continue; // skip outdated node",
      "        for (int i = 0; i < (int)adj[u].size(); i++) {",
      "            auto e = adj[u][i];",
      "            int v = e.first; // to",
      "            int c = e.second; // cost",
      "            if (d[u] + c < d[v]) {",
      "                d[v] = d[u] + c; // update",
      "                parent[v] = u; // record path",
      "                pq.push({d[v], v});",
      "            }",
      "        }",
      "    }",
      "",
      "    // reconstruct path",
      "    std::vector<int> path;",
      "    int v = t;",
      "",
      "    while (v != -1) {",
      "        path.push_back(v);",
      "        if (v == s) break;",
      "        v = parent[v];",
      "    }",
      "    std::reverse(path.begin(), path.end());",
      "",
      "    return path; // shortest path from s to t",
      "}",
    }),
  }),

  -- Bitmask brute force (subset enumeration)
  s("bitmask", {
    t({
      "for (int i = 0; i < (1 << N); i++) { // 0 to 2^N - 1",
      "    for (int j = 0; j < N; j++) {",
      "        if (i & (1 << j)) {",
      "            // j-th element is selected",
      "        } else {",
      "            // j-th element is NOT selected",
      "        }",
      "    }",
      "}",
    }),
  }),

  -- Adjacency list (undirected graph)
  s("adj", {
    t({
      "std::vector<std::vector<int>> adj(N);",
      "for (int i = 0; i < M; i++) {",
      "    int u, v;",
      "    std::cin >> u >> v;",
      "    // u--; v--;",
      "    adj[u].push_back(v);",
      "    adj[v].push_back(u);",
      "}",
    }),
  }),
  
  -- 2D grid input (flattened to 1D)
  s("grid", {
    t({
      "std::vector<int> A(H * W);",
      "for (int i = 0; i < H; i++) { // H for rownum",
      "    for (int j = 0; j < W; j++) { // W for colnum",
      "        std::cin >> A[j + i * W];",
      "    }",
      "}",
    }),
  }),
  
  -- prefix sum (0 th index)
  s("pref", {
    t({
      "std::vector<long long> ps(N);",
      "for (int i = 0; i < N; i++)",
      "    ps[i] = (i == 0) ? A[i] : ps[i - 1] + A[i];",
    }),
  }),
  
    -- Sort vector
  s("sortVector", {
    t({
      "// O(N * logN), descending (remove 3rd arg if ascending)",
      "std::sort(x.begin(), x.end(), [](int a, int b){ return a > b; });",
    }),
  }),

  -- Euclidean algorithm (i.e. Greatest Common Divisor)
  s("gcd", {
    t({
      "int gcd(int a, int b) {",
      "    return b ? gcd(b, a % b) : a;",
      "}",
    }),
  }),
 
  -- True modulo (handles negative values correctly)
  s("mod", {
    t({
      "// mathematical modulo (safely assume [0, b-1])",
      "int mod(int a, int b) {return (a % b + b) % b;}",
    }),
  }),

  -- Convert base-b string to decimal
  s("toBase10", {
    t({
      "function toBase10(s, b)",
      "    local d10 = 0",
      "    for i = 1, #s do",
      "        local c = s:sub(i,i)",
      "        d10 = d10 * b + (tonumber(c) or 0)",
      "    end",
      "    return d10",
      "end",
    }),
  }),

  -- Exponentiation by squaring (modular)
  s("expBySquare", {
    t({
      "ll expBySquare(ll k, ll n, int mod){",
      "    ll res = 1;",
      "    while(n > 0){",
      "        if(n & 1) res = res * k % mod;",
      "        k = k * k % mod;",
      "        n >>= 1;",
      "    }",
      "    return res;",
      "}",
    }),
  }),

  -- next_permutation boilerplate
  s("nextPerm", {
    t({
      "do {",
      "    for (int i = 0; i < N; i++) {",
      "        // do something (e.g. std::cout << A[i];)",
      "    }",
      "",
      "} while (std::next_permutation(A.begin(), A.end()));",
    }),
  }),

  -- next_combination booiler plate using mask + TO BE IMPROVED
  s("nextComb", {
    t({
      "std::vector<int> mask(N, 0); // 0 or 1",
      "std::fill(mask.begin(), mask.begin() + K, 1); // init first K with 1",
      "",
      "do {",
      "    for (int i = 0; i < N; i++) {",
      "        // do something (e.g. std::cout << A[i];)",
      "    }",
      "",
      "} while (std::prev_permutation(mask.begin(), mask.end()));",
    }),
  }),

   -- Digit sum of a string
  s("digitsum", {
    t({
      "int digit_sum(const std::string& s) {",
      "    int sum = 0;",
      "    for (char c : s) sum += c - '0'; // char digit to int",
      "    return sum;",
      "}",
    }),
  }),

  -- Base-b string to decimal
  s("toBase10", {
    t({
      "ll toBase10(const std::string& d, int b) { // base-8 string → decimal",
      "    ll d10 = 0;",
      "    for (char c : d) {",
      "        d10 = d10 * b + (c - '0');",
      "    }",
      "",
      "    return d10;",
      "}",
    }),
  }),

  -- imos (i.e. 2d) 
  s("imos", {
    t({
    }),
  }),

  -- Two-pointer (i.e. shakutori) 
  s("twoptr", {
    t({
      "int r = 0;",
      "long long s = 0;",
      "for (int l = 0; l < N; l++) {",
      "    while (r < N && /* condition */) {",
      "        // e.g. s += A[r];",
      "        r++;",
      "    }",
      "",
      "    // ans update here",
      "",
      "    if (r == l) ++r;",
      "    // e.g. else s -= A[l];",
      "}",
    }),
  }),

  -- Union-Find (Disjoint Set Union) 
  s("unionFind", {
    t({
      "struct UnionFind {",
      "    std::vector<int> p; // parent",
      "",
      "    UnionFind(int N) : p(N) {",
      "        for (int i = 0; i < N; i++) p[i] = i;",
      "    }",
      "",
      "    int root(int x) {",
      "        if (p[x] == x) return x;",
      "        return p[x] = root(p[x]);",
      "    }",
      "",
      "    void unite(int x, int y) {",
      "        if (same(x, y)) return;",
      "        p[root(x)] = root(y);",
      "    }",
      "",
      "    bool same(int x, int y) {",
      "        return root(x) == root(y);",
      "    }",
      "};",
    }),
  }),

  -- kd Tree  
  s("kdTree", {
    t({
    }),
  }),
 
  -- fenwick Tree
  s("fenwickTree", {
    t({
      "using ll = long long;",
      "",
      "struct fenwickTree {",
      "    int n;",
      "    std::vector<ll> t; // internal array",
      "",
      "    fenwickTree(int n) : n(n), t(n + 1, 0) {} // 0th index unused",
      "",
      "    void update(int i, ll x) { // add x to index i",
      "        while (i <= n) {",
      "            t[i] += x;",
      "            i += i & -i;",
      "        }",
      "    }",
      "",
      "    ll query(int i) { // sum from 1 to i",
      "        ll res = 0;",
      "        while (i > 0) {",
      "            res += t[i];",
      "            i -= i & -i;",
      "        }",
      "        return res;",
      "    }",
      "",
      "    ll range(int l, int r) { // sum from l to r",
      "        return query(r) - query(l - 1);",
      "    }",
      "};"
    }),
  }),

  -- segment tree
  s("segTree", {
    t({
      "class Monoid {",
      "public:",
      "    int unit;",
      "    Monoid() { unit = 0; } // identity element",
      "    int calc(int a, int b) { return a + b; }",
      "};",
      "",
      "class SegTree {",
      "public:",
      "    int n;",
      "    std::vector<int> tree;",
      "    Monoid mono;",
      "",
      "    SegTree(std::vector<int> &v) {",
      "        n = 1 << (int)std::ceil(std::log2(v.size()));",
      "        tree = std::vector<int>(n << 1);",
      "",
      "        for(int i = 0; i < (int)v.size(); i++)",
      "            update(i, v[i]);",
      "        for(int i = v.size(); i < n; i++)",
      "            update(i, mono.unit);",
      "    }",
      "",
      "    void update(int k, int x) { // update kth with x",
      "        k += n;",
      "        tree[k] = x;",
      "        for(k = k >> 1; k > 0; k >>= 1){",
      "            tree[k] = mono.calc(tree[k << 1 | 0], tree[k << 1 | 1]);",
      "        }",
      "    }",
      "",
      "    int query(int l, int r) { // return [l, r), 0-origin",
      "        int res = mono.unit;",
      "        l += n;",
      "        r += n;",
      "        while(l < r) {",
      "            if(l & 1) {",
      "                res = mono.calc(res, tree[l++]);",
      "            }",
      "            if(r & 1) {",
      "                res = mono.calc(res, tree[--r]);",
      "            }",
      "            l >>= 1;",
      "            r >>= 1;",
      "        }",
      "        return res;",
      "    }",
      "",
      "    int operator[](int k) { // return st[k], 0-origin",
      "        return tree[tree.size() - n + k];",
      "    }",
      "};",
    }),
  }),
}

