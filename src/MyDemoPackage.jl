module MyDemoPackage

export computeAverage

"""
computeAverage(numbers::Vector{Float64}) -> Float64

Compute the average of a list of numbers.

# Arguments
- `numbers`: A vector of floating-point numbers.

# Returns
- The arithmetic mean of the input numbers.
"""
function computeAverage(numbers::Vector{Float64})
  return sum(numbers) / length(numbers)
end

end # module MyDemoPackage
