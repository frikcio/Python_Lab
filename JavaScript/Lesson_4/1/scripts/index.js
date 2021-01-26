console.log("Task 1")

const letters = [];
const string = "Backend As A Service"

function CutString(someString){
	let slicedString = someString.split(" ")
	for (let i = 0; i != slicedString.length; i++) {
		letters.push(slicedString[i][0])
	}
}

CutString(string)
console.log(letters)
console.log(letters.join(""))

console.log("Task 2")

function type(something){
	if (typeof(something)=='number') {
		let dateNow = new Date()

		let getMetods = [dateNow.getDate(), dateNow.getMonth()+1, dateNow.getHours(), dateNow.getMinutes(), dateNow.getSeconds()]
		let updateDate = []

		for (let i = 0; i!=getMetods.length; i++) {
			someMetod = getMetods[i]
			if (someMetod < 10) {
				updateDate.push("0"+(someMetod))
			} else updateDate.push((someMetod))}
		
		console.log(
			updateDate[0]+"."+ //Day
			(updateDate[1])+"."+//Month
			dateNow.getFullYear()+", "+//Year
			updateDate[2]+":"+//Hour
			updateDate[3]+":"+//Minutes
			updateDate[4])//Seconds
		
	} else console.log("Неверный тип данных")
}
type(0)
type("x")