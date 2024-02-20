def product_array_except_self(initial_array)
    new_array = []
    for a in 0...initial_array.length do
        current_number = initial_array[a]
        current_total = initial_array.reject{ |n| n == current_number }.inject(:*)
        new_array << current_total
    end
    puts new_array.inspect
end

product_array_except_self([-1,1,0,-3,3])