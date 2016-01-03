// JavaScript Olympics

// I paired [with: Karen Ball] on this challenge.

// This challenge took me [#] hours.


// Bulk Up

var arrayOfAthletes = [{name:"Sarah Hughes", event:"Ladies Singles"}, {name:"Scott Hamilton", event:"Mens Singles"}, {name:"Brian Boitano", event:"Mens Singles"}, {name:"Kristi Yamaguchi", event:"Ladies Singles"}];

function win(athleteArray){
  var listOfWin = ""
  for (var i = 0; i < athleteArray.length; i++){
    listOfWin = listOfWin + athleteArray[i].name + " won the "+ athleteArray[i].event + "!\n";
  }
  return listOfWin.substring(0, listOfWin.length - 1);
}
console.log(win(arrayOfAthletes));

// Jumble your words

function reverse(words){
  return words.split("").reverse().join("");
}

console.log(reverse("HANNAH TACOCAT"));




// 2,4,6,8

function evenNumbers(numberArray){
  var evenedOut = [];
  for (var i = 0; i < numberArray.length; i++){
    if (numberArray[i] % 2 == 0){
    evenedOut.push(numberArray[i]);
    }
  }
  return evenedOut;
}

var numbers = [7,3,2,6,8]
console.log(evenNumbers(numbers))

// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
    };

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?
// Oh man. I feel really good about reversing, arrays and declaring variables. I think a lot of things I did in other challenges coalesced into this challenge. I felt pretty confident. It was a lot of fun. I also reinforced that you need to RETURN something! :)
// What are constructor functions?
// They construct an object! so it let's you name an object with less fussing about. They're similar to classes so they take the data and make it into an object that you can use and muck about with.
// How are constructors different from Ruby classes (in your research)?
// Well, first, they are more like hashes and classes had a code baby. They're also less bulky. They also don't really let you put "functions" inside them that only work for the class.