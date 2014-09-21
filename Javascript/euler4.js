largest = 0;
for (i = 900; i < 1000; i++){
  for (j = 900; j < 1000; j++) {
    if ((i * j).toString().split('').reverse().join('') == (i * j).toString()) {
      largest = i * j;
    }
  }
}
console.log(largest);