// Longest Phrase
//===============
/*Pseudo code
----------------------

create a function
input : Array of strings or phrases
steps:
 IF array is not empty
     declare a variable to store the first element in the array(longestString)
     FOR each of the remaining elements in the array
         find length of the element and compare it with the length of the longestString
         IF length of longestString less than length of element at current position in the array
             update longestString to the string in the array at the current location
 otherwise display to provide a valid input array with phrases in it
output : String  */

function longestPhrase(phrase) {
    var phraseSize = phrase.length;
    if (phraseSize > 0) {
        var longestPhrase = "";
        for (var i = 0; i < phraseSize; i++) {
            if (typeof phrase[i] === "string" && longestPhrase.length < phrase[i].length) {
                longestPhrase = phrase[i];
            }
        }
        return longestPhrase;
    } else {
        console.log("Empty array or undefined.");
    }
}
/*
test code for longestPhrase function
-------------------------------------------------------------
var stringArray = ["long phrase", "longest phrase", "longer phrase"];
console.log("The longest phrase is :");
console.log(longestPhrase(stringArray));

another example, null or undefined values are skipped
console.log("-------------");
var fruits = [undefined, "Orange", "Apple", "Banana", "Grape", "Avocado", "Cherry"];
console.log("The longest phrase is :");
console.log(longestPhrase(fruits));
*/
// Find Key-Value Pair Match
//========================
/*Pseudo code
-----------------------------
create a function
input : two objects (firstObject and secondObject)
steps:
 for each key in the firstObject 
     for each key in the secondObject
         if key of firstObject equals key of second object 
             if value of the key of the firstObject equals value of the secondObject
                 RETURN true 
output :boolean
*/
function keyValueMatch(firstObject, secondObject) {
    if (firstObject instanceof Object && secondObject instanceof Object) {
        var firstObjKeys = Object.keys(firstObject);
        var secondObjKeys = Object.keys(secondObject);

        for (var i = 0; i < firstObjKeys.length; i++) {
            for (var j = 0; j < secondObjKeys.length; j++) {
                if (firstObjKeys[i] == secondObjKeys[j] && firstObject[firstObjKeys[i]] == secondObject[secondObjKeys[j]]) {
                    return true;
                }
            }
        }
        return false;
    } else {
        console.log("Either or both are not objects.");
    }
}
/*
var firstPerson = { 'name': "Steven", age: 54 };
var secondPerson = { name: "Tamir", age: 54 };
console.log(keyValueMatch(firstPerson, secondPerson));
console.log("---------------------------------------------------");

var firstAnimal = { 'animal': "Dog", legs: 4 };
var secondAnimal = { animal: "cat", legs: 3 };
console.log(keyValueMatch(firstAnimal, secondAnimal));

console.log("---------------------------------------------------");
var firstObj = 2;
var secondObj = 15;
console.log(keyValueMatch(firstObj, secondObj));
*/
// Generate Random Test Data
//----------------------------------------------
/*Pseudo code
------------------------------------------------
create a function to generate an array of strings
input : integer
steps:
 create an empty string array of size equal to the input integer
 for each element of the array
     generate a random number between 1 and 10 for the length of the string(lengthOfWord) 
     for each i = 0 and i < lengthOfWord
         generate a random alphabet 'a' to 'z' 
         concatenate to the word 
         update i to i + 1
     end loop
 end loop
output: Array of strings
*/
function generateTestData(numberOfWords) {
    if (Number.isInteger(numberOfWords)) {
        var strings = new Array(numberOfWords).fill("");
        var alphabets = "abcdefghijklmnopqrstuvwxyz";
        for (var i = 0; i < numberOfWords; i++) {
            var lengthOfWord = 1 + Math.floor(Math.random() * 10);
            var j = 0;
            do {
                strings[i] += alphabets[Math.floor(Math.random() * 26)];
                j++;
            } while (j < lengthOfWord);
        }
        return strings;
    }
}


// var num = 3;
// console.log(generateTestdata(num));


//===========================================
// Driver Code
//===========================================
for (var i = 0; i < 10; i++) {
    var numberOfWords = 3 + Math.floor(Math.random() * 10); // generate 3 to 10 random words
    var arrayOfWords = generateTestdata(numberOfWords);
    var longestString = longestPhrase(arrayOfWords);
    console.log("The phrases are: ");
    console.log(arrayOfWords);
    console.log();
    console.log("The longest phrase is: ");
    console.log(longestString);
    console.log("--------------------------------------");
    console.log();
}

