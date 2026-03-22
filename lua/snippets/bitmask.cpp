for (int i = 0; i < (1 << N); i++) { // subset 0 to 2^N - 1 
    // std::cout << std::bitset<8>(i) << std::endl; debug
    for (int j = 0; j < N; j++) { // checking jth bit of given i
        if (i & (1 << j)) { // apply mask (1 << j) to i (bit seq) to see if jth bit of i is active
            // j-th element is selected/included
        } else {
            // j-th element is NOT selected/included
        }
    }
}
