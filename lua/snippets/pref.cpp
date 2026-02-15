std::vector<long long> ps(N);
for (int i = 0; i < N; i++)
    ps[i] = (i == 0) ? A[i] : ps[i - 1] + A[i];
