const URL = 'https://jsonplaceholder.typicode.com';

const usersURL = URL + '/users';

let users;

const getUsers = async () => {
	const getUsersReq = await fetch(usersURL);
	const data = await getUsersReq.json();
	users = data;

}

const userListElement = document.getElementById('user-list')
const elementsHolder = document.createElement('div')
elementsHolder.className = 'elements'

userListElement.appendChild(elementsHolder)

const start = async() => {
	await getUsers();
	showUsers(users)
	addNewUserButtonHandler()
}

start();