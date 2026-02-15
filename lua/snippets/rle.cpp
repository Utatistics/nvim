std::vector<std::pair<char,int>> rle;
rle.push_back({S[0], 1});
for (int i = 1; i < N; i++) {
    if (S[i] == rle.back().first) rle.back().second++;
    else rle.push_back({S[i], 1});
}
