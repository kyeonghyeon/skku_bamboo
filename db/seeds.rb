puts "Inserting category data.."
[
    ["사랑", "love"],
    ["사는 얘기", "life"],
    ["학교", "school"],
    ["꿈", "dream"],
    ["저..진지합니다", "serious"]
].each do |x|
    Category.create(name: x[0], en_name: x[1])     
end
puts "Insertion completed"
