int binary_search(int key, const::std::vector<int> &A) {
    int left = -1; // i = 0 does not always satisfy condition
    int right = (int)A.size();
    while (right - left > 1) {
        int mid = left + (right - left) / 2;
        // if (A[mid] >= key) right = mid; // argmin k (key < A[k]) *ascending
        // if (solve(mid, key)) right = mid; // define solve elsewhere
        else left = mid;
    }
    return right;
}
