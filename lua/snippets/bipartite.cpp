// e.g. ABC327 D
std::vector<int> col(N, -1);
auto dfs = [&](auto f, int u, int c) -> bool {
    if (col[u] >= 0) {
        return col[u] == c;
    }

    col[u] = c;
    for (auto v : adj[u]) {
        if (!f(f, v, !c)) return false;
    }
    return true;
};

