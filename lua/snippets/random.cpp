/* generator */
std::mt19937 rng(std::random_device{}());

/* generate int */
int N = std::uniform_int_distribution<int>(1, 20)(rng);
ll M = std::uniform_int_distribution<ll>(1, 20)(rng);

/* generate char */
char c = 'a' + std::uniform_int_distribution<int>(0, 25)(rng);

/* genearte array */
for (int i = 0; i < N; i++) {
    int a = std::uniform_int_distribution<int>(1, 100000)(rng);
    std::cout << a;
}
std::cout << '\n';
