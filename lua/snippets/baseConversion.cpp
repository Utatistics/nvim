/* supports base 2-10 */
ll toBase10(const std::string& s, int b) { // base b (string) -> decimal (i.e. base 10)
    ll d = 0; // base 10
    for (char c : s) {
        d = d * b + (c - '0');
    }

    return d;
}

std::string fromBase10(ll d, int b) { // decimal (integral) -> base b
    if (d == 0) return 0;

    std::string s = ""; // base b
    while (d) {
        s += '0' + (d % b); // appened the last digit
        d /= b;
    }
    std::reverse(s.begin(), s.end());

    return s;
}
