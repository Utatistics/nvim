ll toBase10(const std::string& d, int b) { // base-8 string → decimal
    ll d10 = 0;
    for (char c : d) {
        d10 = d10 * b + (c - '0');
    }

    return d10;
}
