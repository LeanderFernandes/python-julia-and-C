using LinearAlgebra
using BenchmarkTools
using Printf

function matmul(x)
    matrix1 = rand(Float32, x, x)
    matrix2 = rand(Float32, x, x)
    ans = matrix1 * matrix2
end

if length(ARGS) == 1
    @time matmul(parse(Int64, ARGS[1]))
    @time matmul(parse(Int64, ARGS[1]))
else
    @printf("Usage: Julia %s <MATRIX SIZE>", PROGRAM_FILE)
end