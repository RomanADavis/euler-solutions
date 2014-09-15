upToANum = 400 * 100 * 100 //4 million
sum = hold = 0 
fib1 = fib2 = 1
while(fib2 < upToANum) {
    hold = fib2
    fib2 += fib1
    fib1 = hold 
    if(fib2 % 2 == 0) {
        sum += fib2
    }
}
console.log(sum)