def proverb(jumbled_words)
    for i in 0..(jumbled_words.length) do
            if i + 1 >= jumbled_words.length
                break
            end
            puts "For want of a #{jumbled_words[i]} the #{jumbled_words[i+1]} was lost."
    end
    puts "And all for the want of a #{jumbled_words[0]}"
end

proverb(["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"])