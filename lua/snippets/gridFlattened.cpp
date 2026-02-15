std::vector<int> A(H * W);
for (int i = 0; i < H; i++) { // H for rownum
    for (int j = 0; j < W; j++) { // W for colnum
        std::cin >> A[j + i * W];
    }
}
