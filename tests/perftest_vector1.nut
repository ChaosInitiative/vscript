// Perftest #1 for the vector type
// Tests allocation performance on the backend

//
// Generic allocation performance of large vector array
//

local start = SystemTime();
local a = [
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),Vector(1,2,3),
]

local end = SystemTime();

print("Allocated array of " + a.len() + " vectors in " + ((end-start)*1000.0) + " ms\n");

//
// Normalization perf (No parameter, Vector return value)
//

start = SystemTime();

foreach( vec in a ) {
	vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();
	vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();
	vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();
	vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();
	vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();vec.Norm();
}

end = SystemTime();

print("Normalized " + (a.len()*10*5) + " vectors in " + ((end-start)*1000.0) + " ms\n");

//
// Cross product perf (Vector parameter, Vector return value)
//
start = SystemTime();

foreach(vec in a) {
	vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);
	vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);
	vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);
	vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);
	vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);vec.Cross(a[0]);
}

end = SystemTime();

print("Cross " + (a.len()*10*5) + " vectors in " + ((end-start)*1000.0) + " ms\n");

//
// Length perf (No parameter, scalar return)
//
start = SystemTime();

foreach(vec in a) {
	vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();
	vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();
	vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();
	vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();
	vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();vec.Length();
}

end = SystemTime();

print("Length " + (a.len()*10*5) + " vectors in " + ((end-start)*1000.0) + " ms\n");

//
// DOT perf (Vector parameter, scalar return value)
//
start = SystemTime();

foreach(vec in a) {
	vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);
	vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);
	vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);
	vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);
	vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);vec.Dot(a[0]);
}

end = SystemTime();

print("Dot " + (a.len()*10*5) + " vectors in " + ((end-start)*1000.0) + " ms\n");
