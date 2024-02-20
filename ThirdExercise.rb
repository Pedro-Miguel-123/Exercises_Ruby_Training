#Third exercise
def two_sum(nums, target)
    indexes = []
    for a in 0...nums.length do
        for b in a...nums.length do
            if nums[a] + nums[b] == target
                indexes << a
                indexes << b
            end
        end
    end
    puts indexes.inspect
end

two_sum([2,7,11,15], 9)