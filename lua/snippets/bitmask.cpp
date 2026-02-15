for (int i = 0; i < (1 << N); i++) { // 0 to 2^N - 1
    for (int j = 0; j < N; j++) {
        if (i & (1 << j)) {
            // j-th element is selected
        } else {
            // j-th element is NOT selected
        }
    }
}
