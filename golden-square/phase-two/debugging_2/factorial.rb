def factorial(n)
    product = 1

    while n > 1
      product *= n
      n -= 1
    end
    return product
  end
  
  puts "factorial": factorial(5)
  # should be 120