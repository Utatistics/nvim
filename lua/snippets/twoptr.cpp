int ans = 0;
int r = 0;
long long s = 0;
for (int l = 0; l < N; l++) {
    while (r < N && /* condition */) { // monotonically increasing
        // e.g. s += A[r];
        r++;
    }

    // e.g. ans = std::max(ans, r - l); // update ans

    if (r == l) ++r;
    // e.g. else s -= A[l]; // prepare 'l' to move forward
}
