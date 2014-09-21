arbitrary = 600851475143;
upToANum = Math.sqrt(arbitrary)
largest = 0

for(i = 2; i < upToANum; i++) {
    prime = true
    if(arbitrary % i == 0) {
        for(j = 2; j < Math.sqrt(i); j ++){
            if(i % j == 0) {
                prime = false
                break
            }
        }
        if(prime) {
            largest = i
        }
    }
}
console.log(largest)