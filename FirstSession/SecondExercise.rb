def assembly_line()
    linear_growth = 221
    production_hour = []
    for i in 1..10 do
        if i <= 4
            production_hour << linear_growth * i
        elsif 5 <= i && i <= 8
            production_hour << Integer((linear_growth * i) * 0.9)
        elsif i == 9
            production_hour << Integer((linear_growth * i) * 0.8)
        else
            production_hour << Integer((linear_growth * i) * 0.77)
        end
    end
    puts "production rate per hour per speed -> #{ production_hour.inspect }"
    production_minute = production_hour.map { |value| value / 60 }
    puts "production rate per minute per speed -> #{ production_minute.inspect }"

end

assembly_line()
#Linear growth ---> y = ax + b
# 221 = a*1 + b 
# 0 = a*0 + b -> b == 0
# a = 221  -> 221 = a*1 -> a = 221/1 -> a = 221