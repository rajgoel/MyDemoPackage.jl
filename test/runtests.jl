using Test
using MyDemoPackage

@testset "computeAverage" begin
  @test computeAverage([5.0]) ≈ 5.0
  @test computeAverage([1.0, 2.0, 3.0]) ≈ 2.0
end

