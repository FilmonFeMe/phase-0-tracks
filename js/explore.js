// Pseudo code method to reverse a string
//-------------------------------------------------------------

// define function (reverse)
//input : String
//steps : 
//  //define an empty variable to  store the  reversed word (reversedWord)
//  // start iteration: for each character in the input word starting at the end 
//  //add the character to the variable (reversedWord)
//  // end iteration
//output :string

// add driver code

function reverse(originalWord) {
    var wordSize = originalWord.length;
    if (wordSize !== 0 && originalWord !== " ") {
        var reversedWord = "";

        for (var i = wordSize - 1; i > -1; i--) {
            reversedWord += originalWord[i];
        }
        return reversedWord;
    } else {
        console.log("You did not provide a valid word. Please enter a valid word.");
    }
}

// check method
// var originalWord = "hello";

// console.log("The original word is '" + originalWord +"'" + " and it is '" + reverse(originalWord) +"' after reversing it.");

//Driver code
//==========
//original word
var originalWord = "hello";

// check if word is palindrome
var noPalindrome = false;
var reversedWord = reverse(originalWord);
if (originalWord.toLowerCase() !== reversedWord.toLowerCase()) {
    noPalindrome = true;
}

//Display original and reversed word if the word is not palindrome
if (noPalindrome) {
    console.log("The original word is '" + originalWord + "'" + " and it is '" + reverse(originalWord) + "' after reversing it.");

} else {
    console.log("The original word is '" + originalWord + "'" + " and it is '" + reverse(originalWord) + "' after reversing it. It is a Palindrome word !");
}

// example of a palindrome word
console.log("-------------------------------------------");
var originalWord = "Civic";

var noPalindrome = false;
var reversedWord = reverse(originalWord);
if (originalWord.toLowerCase() != reversedWord.toLowerCase()) {
    noPalindrome = true;
}

//Display original and reversed word if the word is not palindrome
if (noPalindrome) {
    console.log("The original word is '" + originalWord + "'" + " and it is '" + reverse(originalWord) + "' after reversing it.");

} else {
    console.log("The original word is '" + originalWord + "'" + " and it is '" + reverse(originalWord) + "' after reversing it. It is a Palindrome word!");
}
