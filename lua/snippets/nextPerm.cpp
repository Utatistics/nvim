do { // A needs to be sorted
    for (int i = 0; i < N; i++) {
        // do something (e.g. std::cout << A[i];)
    }

} while (std::next_permutation(A.begin(), A.end())); // next in lexicographical order, no duplicates
