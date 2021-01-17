console.log('Task 1')
let x = -1;
if (x >= 0) {
	console.log('Число положительное')
} else	{
	console.log('Число ' + x + ' отрицательное')
}
let y = 2;
if (y >= 0) {
	console.log('Число ' + y + ' положительное')
} else	{
	console.log('Число отрицательное')
}

console.log('Task 2')
let sum = 0;
let count = 0;
for (let i = 0; ; i++) {
	if (i % 5 === 0){
		sum+=i
		count+=1
	}
	if (count===10) break
} 
console.log('Результат суммирования: ' + sum)

console.log('Task 3')
let numbers = [ 254, 115, 78, 25, 91, 45, 37 ]
for (let i = 0; i <= numbers.length; i++) {
	if (numbers[i]>50) console.log('Number ' + numbers[i] + ' is bigger than 50') 
}