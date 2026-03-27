std::vector<std::vector<int>> adj; 
std::vector<bool> visited;

void dfs(int x) {
    if (visited[x]) return;
    visited[x] = true; // visited

    for (auto neighbor : adj[x]) {
        // logic here
        dfs(neighbor, adj, visited);
    }
}
