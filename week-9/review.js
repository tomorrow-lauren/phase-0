// I chose to re-do the Die Class 2 challenge from week 6 in JavaScript.

// psuedocode

// create a dice Object that takes an array of sides
// tells you how many sides there are.
// allows you to roll the dice
// and returns the result of your roll.

// initial solution
// var dieObject = {}
// dieObject.sideLabels = ["blue", "green", "sad", "froggy"];
// dieObject.sides = dieObject.sideLabels.length;
// dieObject.roll = function() {
//   var randomNum = Math.floor(Math.random() * (dieObject.sides - 0) + 0);
//   return dieObject.sideLabels[randomNum];
//   }
// console.log(dieObject.roll());

// refactor
var dieObject = {};
dieObject.sideLabels = prompt("Enter a list of things, seperated by a space, please.").split(" ");
dieObject.sides = dieObject.sideLabels.length;
dieObject.roll = function() {
  var randomSide = Math.floor(Math.random() * (dieObject.sides - 0) + 0);
  return dieObject.sideLabels[randomSide];
  }

// reflection
// What concepts did you solidify in working on this challenge?
// I feel really good about my array skills. I also think that I'm starting to understand Math.floor and other Math things about JS so that makes me feel pretty good. I loved the dice challenge because it wasn't easy but it was simple, ifthat makes sense. I knew something that simple would be harder to translate.
// What was the most difficult part of this challenge?
// Getting all the parts to work and be declared correctly. I get this and hashes mixed up so sometimes they get mixed up and I have to console.log() things until I get them right.
// Did you solve the problem in a new way this time?
// Well I had to - Ruby has classes where JavaScript has objects. I think I need to sit down and review how to write them. I think I probably could have gotten this all delcared in the object itself, but I also think this makes it a little more readable. I love that you can just write a new thing into the Object. JS is sometimes frustrating because it's so slippery, but this time, I liked it.
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// I've actually gotten better at making my pseudocode more readable and understanding. At least, I hope so. I also think that the methods are different so I couldn't really say the same things.