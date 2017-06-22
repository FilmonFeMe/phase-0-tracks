// Longest Phrase
//===============
//Pseudo code
//-----------------------------

// create a function
//input : Array of strings or phrases
//steps:
//	// IF array is not empty
//		// declare a variable to store the first element in the array(longestString)
//		// FOR each of the remaining elements in the array
//			//find length of the element and compare it with the length of the longestString
//			//IF length of longestString less than length of element at current position in the array
//				// update longestString to the string in the array at the current location
//	//otherwise display to provide a valid input array with phrases in it
// output : String 

function longestPhrase(phrase) {
    var phraseSize = phrase.length;
    if (phraseSize > 0) {
        var longestPhrase = phrase[0];
        for (var i = 1; i < phraseSize; i++) {
            if (phrase[i] !== null && phrase[i] !== undefined) {
                if (longestPhrase.length < phrase[i].length) {
                    longestPhrase = phrase[i];
                }

            }

        }
        return longestPhrase;
    } else {
        console.log("Empty array or undefined.");
    }
}

// driver code
var stringArray = ["long phrase", "longest phrase", "longer phrase"];
console.log("The longest phrase is :");
console.log(longestPhrase(stringArray));

//another example
console.log("-------------");
var fruits = ["Orange", "Apple", "Banana", "Grape", "Avocado", "Cherry", undefined];
console.log("The longest phrase is :");
console.log(longestPhrase(fruits));
