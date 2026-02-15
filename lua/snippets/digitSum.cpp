int digit_sum(const std::string& s) {
    int sum = 0;
    for (char c : s) sum += c - '0'; // char digit to int
    return sum;
}
