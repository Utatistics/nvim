int N, K;
std::vector<int> A;

auto dfs = [&](auto f) -> void {
    if (A.size() == K) {
        // logic here

        return;
    }

    for (int r = 0; r < N; r++) {
        A.push_back(r);
        f(f);
        A.pop_back(); // revert
    }
};

