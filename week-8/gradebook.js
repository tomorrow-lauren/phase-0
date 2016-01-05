/*
Gradebook from Names and Scores
I worked on this challenge [with: Devin Madelbaum]
This challenge took me [1] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/
var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph: {
//     testScores: scores[0]
//   },
//   Susan: {
//     testScores: scores[1]
//   },
//   William: {
//     testScores: scores[2]
//   },
//   Elizabeth: {
//     testScores: scores[3]
//   }
// };

// gradebook.addScore = function(name, score){
//   gradebook[name].testScores.push(score);
// }
// gradebook.getAverage = function(name){
//   return average(gradebook[name].testScores);
// };
// function average(array){
//   var sum = 0;
//   for(var count = 0; count < array.length; count ++){
//     sum += array[count];
//   }
//   sum = sum/array.length;
//   return sum;
// };




// __________________________________________
// Refactored Solution
var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  }
};

gradebook.addScore = function(student, newScore){
  return gradebook[student].testScores.push(newScore);
}

gradebook.getAverage = function(student){
  return average(gradebook[student].testScores);
};

function average(numArray){
  var sumOfArray = 0;
  var quantityInArray = numArray.length;
  for(var count = 0; count < quantityInArray; count ++){
    sumOfArray += numArray[count];
  }
  return sumOfArray/quantityInArray;
};

// __________________________________________
// Reflect

// What did you learn about adding functions to objects?
// I learned that it's pretty easy. I think I got mixed up last week when it couldn't be done but it obviously can be. It learned how to do it pretty nice. I like it. I learned the proper notation and everything.
// How did you iterate over nested arrays in JavaScript?
// We didn't here, but we did discuss it. It never said to iterate so we just assigned. But if we had, we'd have probably used nested for loops. We did one above for the average.
// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We didn't use any new methods but we did work a lot more with bracket notation, so I was stoked to get more comfortable with that. It works better, I think. It's more coercive than dot notation.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)