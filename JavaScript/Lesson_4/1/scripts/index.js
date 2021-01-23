console.log("Task 1")

const letters = [];
const string = "Backend As A Service"

function CutString(string){
	let cuted = string.split(" ")
	for (let i = 0; i != cuted.length; i++) {
		letters.push(cuted[i][0])
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
			if (getMetods[i]< 10) {
				updateDate.push("0"+(getMetods[i]))
			} else updateDate.push((getMetods[i]))}
		
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