std::vector<int> ps(N + 1, 0);
for (int i = 1; i <= N; i++) ps[i] = ps[i - 1] + A[i - 1];
