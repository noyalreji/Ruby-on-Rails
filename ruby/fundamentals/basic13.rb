# Write a program that would print all the numbers from 1 to 255. 
for j in 1..255
    puts "#{j}"
end

# Write a program that would print all the odd numbers from 1 to 255.
for j in 1..255
    if j.odd?
        puts "#{j}"
    end
end

# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far.
sum = 0
for j in 0..255
    puts "New number: #{j} sum: #{sum += j}"
end

# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.
x = [1,3,5,7,9,13]
for j in x
    puts "#{j}"
end

# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
a = [-3,-5,0,6,2]
puts a.max

# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.
sum = 0
b = [-3,-5,0,6,12]
for j in b
    puts " #{sum += j}"
end
puts sum/b.length

# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
y = []
(1..255).each { |i| y << i if i.odd? }
puts y

# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
c = [1, 3, 5, 7]
y = 3
puts c.count {|greater| greater > y}

# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].

z = [1, 5, 10, -2]
for j in z
    puts "#{j * j}"
end

# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].
z = [1, 5, 10, -2]
for j in z
    if j.negative?
        puts "#{z[j] = 0}"
    else
        puts "#{j}"
    end
end

# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.
sum = 0
z = [1, 7, 10, -2]
for j in z
    sum += j
end
puts "max: #{z.max}, min: #{z.min}, average: #{sum/z.length} "

# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0]
z = [1, 5, 10, 7, -2]
z.rotate!(1)[z.length-1] = 0
puts z


# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].
x = [-1, -3, 2]
for index in x
    if index.negative?
        puts "Dojo"
    else
        puts "#{x[index]}"
    end
end
