
std::vector<std::vector<int>> C; // connected components
std::vector<int> m(N, -1); // m[v] = connected component index containing v

auto bfs = [&](int s) -> void {
    if (m[s] >= 0) return;

    int i = (int)C.size(); // ith cc
    std::vector<int> c; // cc nodes
    std::queue<int> q;

    m[s] = i;
    c.push_back(s);
    q.push(s);

    while (!q.empty()) {
        int u = q.front(); q.pop();

        for (auto v : adj[u]) { // define adj list
            if (m[v] >= 0) continue;
            m[v] = i;
            c.push_back(v);
            q.push(v);
        }
        
    }

    C.push_back(c);
};

int s = C.size();
for (int i = 0; i < s; i++) {
    /* logic here */
}

