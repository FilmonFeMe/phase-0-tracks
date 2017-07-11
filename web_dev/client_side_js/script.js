var image = document.getElementsByTagName('img');
var photo = image[0];
photo.width = "50";
photo.height = "50";

var head = document.createElement('h2');
var headText = document.createTextNode('Outdoors');
head.appendChild(headText);
var parent = document.getElementsByTagName('div');
var paragraph = document.getElementsByTagName('p');
parent[0].insertBefore(head,paragraph[0]);


function move(event){
		event.target.style.top = Math.random()* 450 +"px";
		event.target.style.left = Math.random()* 450 +"px";	
}
photo.addEventListener('click', move);