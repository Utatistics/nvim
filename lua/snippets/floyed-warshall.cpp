static const int MAX = 1e9;

// init
std::vector<std::vector<int>> D(N, std::vector<int>(N, MAX)); // i.e. dp matrix

for (int i = 0; i < N; i++) D[i][i] = 0;
for (int i = 0; i < M; i++) {
    int u, v, c;
    std::cin >> u >> v >> c;
    u--; v--; // 0 origin

    D[u][v] = std::min(D[u][v], c);
    D[v][u] = std::min(D[v][u], c);
}

// Floyd–Warshall
for (int k = 0; k < N; k++) { // kth update of dp matrix 
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            D[i][j] = std::min(D[i][j], D[i][k] + D[k][j]);
        }
    }
}

