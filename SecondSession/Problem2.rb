def nested_list_processing(directory_list)
    total_elements = 0
    for i in 0...directory_list.length do 
        if directory_list[i].kind_of?(Array)
            total_elements += recursive_count(directory_list[i])
        else 
            total_elements += 1
        end
    end
    puts total_elements
end

def recursive_count(directory_list)
    sum = 0
    return 0 if directory_list.empty?
    for i in 0...directory_list.length do
        if directory_list[i].kind_of?(Array)
            return sum += recursive_count(directory_list[i])
        else 
            sum += 1
        end
    end
    return sum
end

file_system = [
  "README.txt",
  ["images", "photo.jpg", "logo.png"],
  "main.rb",
  "index.html",
  ["src", "modules", "user.rb", "helper.rb", "pedro.py"],
  "data.json"
]

nested_list_processing(file_system)
