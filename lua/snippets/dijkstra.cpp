static const int INF = 1e9; // change if required
using P = std::pair<int, int>;

auto dijkstra(int s, int t, std::vector<std::vector<P>> &adj) { // O(E * logV)
    int n = adj.size();

    std::vector<int> dist(n, INF); // distance array
    std::vector<int> par(n, -1); // prev node on shortest path
    std::priority_queue<P, std::vector<P>, std::greater<P>> pq; // min heap required
    
    pq.emplace(0, s); // (distance, vertex)
    dist[s] = 0;

    while (!pq.empty()) {
        auto [d, u] = pq.top(); pq.pop();
        if (d > dist[u]) continue; // skip outdated node
        
        for (auto [v, c] : adj[u]) {

            if (dist[v] > dist[u] + c) { // better path found
                dist[v] = dist[u] + c; // update
                par[v] = u; // record path
                pq.emplace(dist[v], v);
            }
        }
    }

    /* 
    std::vector<int> path;
    int v = t;
    while (v != -1) { 
        path.push_back(v);
        if (v == s) break;
        v = par[v];
    }
    std::reverse(path.begin(), path.end());
    return path; // shortest path from s to t
    */

    }
