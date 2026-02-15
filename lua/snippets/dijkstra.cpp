static const int MAX = 1e9; // change if required
using P = std::pair<int, int>; // {to, cost} *change if required

std::vector<int> dijkstra(int s, int t, std::vector<std::vector<P>> &adj) { // O(E * logV)
    int n = adj.size();

    std::vector<int> d(n); // distance array
    for (int i = 0; i < n; i++) d[i] = (i == s) ? 0 : MAX;

    std::vector<int> parent(n, -1); // prev node on shortest path

    std::priority_queue<P, std::vector<P>, std::greater<P>> pq; // min heap required
    pq.push({0, s}); // (distance, vertex)

    while (!pq.empty()) {
        auto p = pq.top();
        int dist = p.first;
        int u = p.second;
        pq.pop();

        if (dist > d[u]) continue; // skip outdated node
        for (int i = 0; i < (int)adj[u].size(); i++) {
            auto e = adj[u][i];
            int v = e.first; // to
            int c = e.second; // cost
            if (d[u] + c < d[v]) {
                d[v] = d[u] + c; // update
                parent[v] = u; // record path
                pq.push({d[v], v});
            }
        }
    }

    // reconstruct path
    std::vector<int> path;
    int v = t;

    while (v != -1) {
        path.push_back(v);
        if (v == s) break;
        v = parent[v];
    }
    std::reverse(path.begin(), path.end());

    return path; // shortest path from s to t
}
