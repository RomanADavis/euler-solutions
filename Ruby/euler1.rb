# Project Euler 1 in Ruby
sum = 0
(1..999).each {|i| sum += i if i % 3 == 0 or i % 5 == 0}
p sum

# Recursive version of the above
def euler_rec n=999
  return 0 if n == 0
  n % 3 == 0 || n % 5 == 0 ? n + euler_rec(n -1) : euler_rec(n - 1)
end

p euler_rec

# This simple solution has the advantage of being, well, simple. But it doesn't
# scale very well to large values of n as it's farced to loop through every
# value of n. What to do?

# Well, the sum up to 1 equals 1; 2, 3; 3, 6; 4, 10. They are triangle numbers,
# Equal to n*(n+1)/2. 1 * (1 + 1) / 2 = 1; 2 * (2 + 1) / 2  = 3; 3 * (3 + 1) / 2
# = 6.

# That, and 3 + 6 + 9... +999 = (1 + 2 + 3.. + 333) * 3 and you get...
 
def sum_of_products_of n, sum_up_to=999
  p = sum_up_to / n
  n * (p *(p + 1)) / 2
end

p sum_of_products_of(3) + sum_of_products_of(5) - sum_of_products_of(15)