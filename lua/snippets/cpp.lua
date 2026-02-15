local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local snippet_dir = debug.getinfo(1, "S").source:sub(2):match("(.*/)")

-- load snippet from .cpp files
local function load_cpp_lines(filename)
    local full_path = snippet_dir .. filename
    local file = io.open(full_path, "r")
    if not file then
        error("Cannot open file: " .. full_path)
    end
    local content = file:read("*all")
    file:close()

    local lines = {}
    for line in content:gmatch("([^\n]*)\n?") do
        table.insert(lines, line)
    end
    return lines
end

-- main
return {
  s("adj", { t(load_cpp_lines("adj.cpp")) }),
  s("grid", { t(load_cpp_lines("grid.cpp")) }),
  s("gridFlattened", { t(load_cpp_lines("gridFlattened.cpp")) }),
  s("sortVector", { t(load_cpp_lines("sortVector.cpp")) }),
 
  s("digitSum", { t(load_cpp_lines("digitSum.cpp")) }),
  s("toBase10", { t(load_cpp_lines("toBase10.cpp")) }),
  s("coutPrecision", { t(load_cpp_lines("coutPrecision.cpp")) }),
  
  s("gcd", { t(load_cpp_lines("gcd.cpp")) }),
  s("mod", { t(load_cpp_lines("mod.cpp")) }),
  s("nextPerm", { t(load_cpp_lines("nextPerm.cpp")) }),
  s("isPrimce", { t(load_cpp_lines("isPrime.cpp")) }),
  s("primeFactor", { t(load_cpp_lines("primeFactor.cpp")) }),

  s("bitmask", { t(load_cpp_lines("bitmask.cpp")) }),
  s("expBySquare", { t(load_cpp_lines("expBySquare.cpp")) }),
  s("doubling", { t(load_cpp_lines("doubling.cpp")) }),
  
  s("rle", { t(load_cpp_lines("rle.cpp")) }),
  s("pref", { t(load_cpp_lines("pref.cpp")) }),
  s("imos", { t(load_cpp_lines("imos.cpp")) }),
  s("binarySearch", { t(load_cpp_lines("binarySearch.cpp")) }),
  s("twoptr", { t(load_cpp_lines("twoptr.cpp")) }),
  
  s("bfs", { t(load_cpp_lines("bfs.cpp")) }),
  s("dfs", { t(load_cpp_lines("dfs.cpp")) }),
  s("dijkstra", { t(load_cpp_lines("dijkstra.cpp")) }), 

  s("unionFind", { t(load_cpp_lines("unionFind.cpp")) }),
  s("kdTree", { t(load_cpp_lines("kdTree.cpp")) }),
  s("fenwickTree", { t(load_cpp_lines("fenwickTree.cpp")) }),
  s("segTree", { t(load_cpp_lines("segTree.cpp")) }),

}

