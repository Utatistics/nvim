void dfs(int x, const std::vector<std::vector<int>> &adj, std::vector<bool> &status) {
    if (status[x]) return;
    status[x] = true; // visited

    for (auto neighbor : adj[x]) {
        // logic here
        dfs(neighbor, adj, status);
    }
}
