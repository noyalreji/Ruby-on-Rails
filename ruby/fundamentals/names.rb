a = {first_name: "Michael", last_name: "Choi"}
b = {first_name: "John", last_name: "Doe"}
c = {first_name: "Jane", last_name: "Doe"}
d = {first_name: "James", last_name: "Smith"}
e = {first_name: "Jennifer", last_name: "Smith"}
names = [a, b, c, d, e]


def user_names (first_name: 'first_name', last_name: 'last_name')
    puts "the name is #{first_name} #{last_name}"
end

puts "you have 5 names in the 'names' array"
user_names a
user_names b
user_names c
user_names d
user_names e