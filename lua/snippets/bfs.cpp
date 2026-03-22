std::vector<std::vector<int>> adj; 

void bfs(int s) {
    std::vector<bool> visited;
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
