int H, W;

// up, down, left, right
static const int di[4] = {-1, 1, 0, 0};
static const int dj[4] = {0, 0, -1, 1};
bool isBound(int i , int j) { return (0 <= i && i < H && 0 <= j && j < W);}

// search logic * no adj meeded!
    visited.resize(H, std::vector<bool>(M, false));    

    std::vector<std::vector<bool>> visited;
    for (int k = 0; k < 4; k++) { // grid search
        int id = i + di[k];
        int jd = j + dj[k];

        if (!isBound) {
            // logic
        }
        else {
            // logic
        }
    }

