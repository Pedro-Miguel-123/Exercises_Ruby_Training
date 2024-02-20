def bird_watcher(occurrences_by_day)
    puts "Per day occurrences: "
    occurrences_by_day.each do |num|
      puts num
    end
    puts "Occurrences yesterday -> #{occurrences_by_day[-1]}"
    puts "Total number of visiting birds -> #{occurrences_by_day.sum}"
    puts "There were 5 or more birds this many times -> #{occurrences_by_day.select { |num| num >= 5 }.length}"
    puts "Were there days with no birds? #{occurrences_by_day.include?(0)}"
end

bird_watcher([0,2,5,3,7,8,4])
