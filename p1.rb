m = '0101001001001001010000110100100001001101010011110100111001000100'
k = '0001001100110100010101110111100110011011101111001101111111110001'

r0 = '00000000000000000111101001100101'
check = '11110000101010101111000010101010'
result = '011110100001010101010101011110100001010101010101'


arr2 = [58, 50, 42, 34, 26, 18, 10, 2,
60, 52, 44, 36, 28, 20, 12, 4,
62, 54, 46, 38, 30, 22, 14, 6,
64, 56, 48, 40, 32, 24, 16, 8,
57, 49, 41, 33, 25, 17, 9, 1,
59, 51, 43, 35, 27, 19, 11, 3,
61, 53, 45, 37, 29, 21, 13, 5,
63, 55, 47, 39, 31, 23, 15, 7 
]
exp = [32, 1, 2, 3, 4, 5,
4, 5, 6,  7,  8, 9,
8, 9, 10, 11, 12, 13,
12, 13, 14, 15, 16, 17,
16, 17, 18, 19, 20, 21,
20, 21, 22, 23, 24, 25,
24, 25, 26, 27, 28, 29,
28, 29, 30, 31, 32, 1
]
string = ''
puts exp.length.to_s
def fn2(exp, r0, string)
    exp.each do |ele|
        string += r0[ele-1].to_s
    end
    string
end

string = fn2(exp, r0, string)
i = 0
puts arr2.length
str = ''
def fn(str, array, m)
    array.each do |ele|
        print m[ele-1]
        str += m[ele - 1].to_s
    end
    str
end
str = fn(str, arr2, m)

puts "String is #{string}"
puts "R0 is " +string[31..63]

puts "same" if string == result



