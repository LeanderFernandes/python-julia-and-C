using LinearAlgebra
using BenchmarkTools

function matmul(x)
    matrix1 = rand(Float32, 5, 5)
    matrix2 = rand(Float32, 5, 5)
    ans = matrix1*matrix2
end


@btime matmul(1000000)