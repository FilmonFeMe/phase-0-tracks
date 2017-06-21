// Pseudo code method to reverse a string
//-------------------------------------------------------------

// define function (reverse)
//input : String
//steps : 
//	//define an empty variable to  store the  reversed word (reversedWord)
//	// start iteration: for each character in the input word starting at the end 
//	//add the character to the variable (reversedWord)
// 	// end iteration
//output :string

// add driver code

function reverse(originalWord) {
   var wordSize = originalWord.length;
    if (wordSize != 0 && originalWord != " ") {
        var reversedWord = "";

        for (var i = wordSize - 1; i > -1; i--) {
            reversedWord += originalWord[i];
        }
        return reversedWord;
    }else {
    	console.log("You did not provide a string. Please type again.");
    }
}

// check method
// var originalWord = "hello";

// console.log("The original word is '" + originalWord +"'" + " and it is '" + reverse(originalWord) +"' after reversing it.");

//Driver code
//==========


