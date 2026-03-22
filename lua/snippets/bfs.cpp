std::vector<std::vector<int>> adj; 

// ** + α ** //
// std::vector<int> D;
// std::vector<int> par; // parent
// std::vector<int> path; // path

void bfs(int s) {
    std::vector<bool> visited;
    std::queue<int> q;

    visited[s] = true;
    //D[s] = 0;
    // parent.assign(adj.size(), -1);
   
    q.push(s);
    // int d = 0;
    while (!q.empty()) {
        int x = q.front(); q.pop(); 
        for (auto neighbor : adj[x]) {
            if (visited[neighbor]) continue; // ignore if visited
            visited[neighbor] = true; // visited
  
            // logic here
            // e.g. D[neighbor] = D[x] + 1;
            // e.g. par[neighbor] = x;
            
            q.push(neighbor);
        }
    }
    // ** path reconstruct ** //
    // int t; // given as arg
    // for (int i = t; i != -1; i = par[i]) // par for root is -1 
        // path.push_back(i);
    
    // std::reverse(path.begin(), path.end());
}

