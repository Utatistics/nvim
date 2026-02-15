// descending (remove 3rd arg if ascending)
std::sort(x.begin(), x.end(), [](int a, int b){ return a > b; }); // O(N * logN)
