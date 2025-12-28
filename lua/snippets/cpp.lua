local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("binarySearch", {
    t({
      "int binary_search(int key) {",
      "    int left = -1; // i = 0 does not always satisfy condition",
      "    int right = (int)a.size(); // a.size()",
      "    while (right - left > 1) {",
      "        int mid = left + (right - left) / 2;",
      "        if (solve(mid, key)) right = mid; // solve defined elsewhere",
      "        else left = mid;",
      "    }",
      "    return right;",
      "}",
    }),

    --- more
  }),
}

