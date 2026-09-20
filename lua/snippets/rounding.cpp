/* floating-point input */
std::ceil(x);
std::floor(x);

/* integer input: x / k */
auto floor = [&](int x, int k) -> int {
    return x / k;
};

auto ceil = [&](int x, int k) -> int {
    return (x + k - 1) / k; // e.g. x + 1 / 2
};
