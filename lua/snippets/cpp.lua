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

  -- Adjacency list (undirected graph)
  s("adj", {
    t({
      "std::vector<std::vector<int>> adj(N);",
      "for (int i = 0; i < M; i++) {",
      "    int u, v;",
      "    std::cin >> u >> v;",
      "    adj[u].push_back(v);",
      "    adj[v].push_back(u);",
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
  s("uf", {
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
  -- prefix sum (0 th index)
  s("pref", {
    t({
      "std::vector<long long> ps(N);",
      "for (int i = 0; i < N; i++)",
      "    ps[i] = (i == 0) ? A[i] : ps[i - 1] + A[i];",
    }),
  }),

}

