void bfs(int s, const std::vector<std::vector<int>> &adj) {
    std::status<bool> stattus;
    std::queue<int> q;

    status[s] = true;
    q.push(s);

    while (!q.empty()) {
        int x = q.front(); q.pop();

        for (auto neighbor : adj[x]) {
            if (status[neighbor]) continue; // ignore if visited
            status[neighbor] = true; // visited
            // logic here
            q.push(neighbor);
        }
    }
}
