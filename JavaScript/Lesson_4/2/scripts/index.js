console.log("Task 1")

function someFunc() {
    for (let index in arguments) {
        console.log(arguments[index])
    }
	console.log(arguments.callee)
	
}

someFunc(10, false, "google")


console.log("Task 2")

function userInfo() {
    const {name, registered, date} = this
	if (registered === true) {
		console.log("Дата регистрации: "+ date)
	} else console.log("Незарегистрированный пользователь: "+ name)
}

 const person1 = {
 	name: "Anton",
 	registered: true,
 	date: "23.01.2019",
 	getInfo: userInfo
 }

  const person2 = {
 	name: "Octo",
 	registered: false,
 	date: "",
 	getInfo: userInfo
 }

person1.getInfo()
person2.getInfo()


console.log("Task 3")

// you should write the code of function  getCurrentPostComments

const users = {
        14587: {
                name: "Ivan",
                email: "ivan78@gmail.com"
        },
        28419: {
                name: "Georg",
                email: "georg.klep@gmail.com"
        },
        41457: {
                name: "Stephan",
                email: "stephan.borg@gmail.com"
        }
}
const posts = {
        7891451: {
                author: 14587,
                text: "Imagine we can encapsulate these secondary responsibilities in functions"
        },
        7891452: {
                author: 28419,
                text: `В конструкторе ключевое слово super используется как функция, вызывающая родительский конструктор. 
                        Её необходимо вызвать до первого обращения к ключевому слову this в теле конструктора. 
                        Ключевое слово super также может быть использовано для вызова функций родительского объекта`
        },
        7891453: {
                author: 28419,
                text: `DOM не обрабатывает или не вынуждает проверять пространство имен как таковое. 
                        Префикс пространства имен, когда он связан с конкретным узлом, не может быть изменен`
        },
        7891454: {
                author: 14587,
                text: "Ключевое слово super используется для вызова функций, принадлежащих родителю объекта"
        }
}
const comments = {
        91078454: {
                postId: 7891451,
                author: 28419,
                text: `The static String.fromCharCode() method returns a string created 
                        from the specified sequence of UTF-16 code units`
        },
        91078455: {
                postId: 7891451,
                author: 41457,
                text: `HTML элемент <template> — это механизм для отложенного рендера клиентского контента, 
                        который не отображается во время загрузки, но может быть инициализирован при помощи JavaScript`
        },
        91078457: {
                postId: 7891452,
                author: 41457,
                text: "Глобальный объект String является конструктором строк, или, последовательностей символов"
        },
        91078458: {
                postId: 7891452,
                author: 14587,
                text: `The Element.namespaceURI read-only property returns the namespace URI of the element, 
                        or null if the element is not in a namespace`
        }
}

function getPostComments (postId) {
	let mass = []
	for (let cKey in comments) { //key in comments
        comment = comments[cKey]
		if (comment.postId===postId){
			for (let uKey in users) { //key in users
                user = users[uKey]
				if (parseInt(uKey) === comment.author){
					mass.push({aurhor : user.name, text : comment.text})
				}
			}
			
		}

	}
	console.log(mass)
}

getPostComments (7891451)