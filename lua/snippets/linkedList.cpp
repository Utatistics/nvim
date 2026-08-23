/* linked list node */
struct Node {
    int value; // change type if required
    Node* prev;
    Node* next;

    Node(char v) : value(v), prev(nullptr), next(nullptr) {}
};

/* construct linked list from vector*/
std::vector<int> A;

Node* head = nullptr;
Node* tail = nullptr;

for (auto x : A) {
    Node* node = new Node(x);

    if (head == nullptr) {
        head = node;
        tail = node;
    } else {
        tail->next = node;
        node->prev = tail;
        tail = node;
    }
}

/* traverse */
Node* node = head;
while (node != nullptr) {
    // logic here
    node = node->next;
}

