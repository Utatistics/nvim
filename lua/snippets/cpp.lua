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
      "std::vector<int> dijkstra(int s, std::vector<std::vector<P>> &adj) { // O(E * logV)",
      "    int n = adj.size();",
      "",
      "    std::vector<int> d(n); // distance array",
      "    for (int i = 0; i < n; i++) d[i] = (i == s) ? 0 : MAX;",
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
      "            auto p = adj[u][i];",
      "            int v = p.first; // to",
      "            int cost = p.second; // cost",
      "            if (d[u] + cost < d[v]) {",
      "                d[v] = d[u] + cost; // update",
      "                pq.push({d[v], v});",
      "            }",
      "        }",
      "    }",
      "",
      "    return d; // return distance array",
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

  -- Sort vector
  s("sortVector", {
    t({
      "// #include <algorithm> needed",
      "// O(N * logN), descending (remove 3rd arg if ascending), #include <algorithm> needed",
      "std::sort(x.begin(), x.end(), [](int a, int b){ return a > b; });",
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
  
   -- segment tree  
  s("segTree", {
    t({
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
  
  -- Print 1D arrays
  s("printVector", {
    t({
      "for (int i = 0; i < N; i++) std::cout << A[i] << \" \";",
      "std::cout << \"\\n\";",
    }),
  }),

  -- Print 2D array
  s("printGrid", {
    t({
      "for (int i = 0; i < N; i++) {",
      "    for (int j = 0; j < M; j++) {",
      "        std::cout << A[i][j] << \" \";",
      "    }",
      "    std::cout << \"\\n\";",
      "}",
    }),
  }),

}

