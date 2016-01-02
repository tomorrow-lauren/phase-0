// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var grits = "kiss them!"
console.log(grits)
grits = "been kissed!"
console.log(grits)
//I'm supposed to prompt for food
var foodfav = prompt("What's your favorite food?", "");
alert("Hey! That's my favorite too!");
console.log(foodfav);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// I did looping a triangle
var numList = "#";
while (numList.length < 8){
console.log(numList);
numList += "#";
}
// and FizzBuzz part one
for (var current = 1; ; current++) {
  if (current == 101)
    break;
  else if (current % 3 == 0)
    console.log("Fizz")
  else if (current % 5 == 0)
  console.log("Buzz")
  else
      console.log(current)
}
//and an unrefactored part 2
for (var current = 1; ; current++) {
  if (current == 101)
    break;
  else if (current % 3 == 0 && current % 5 == 0)
    console.log("FizzBuzz")
  else if (current % 3 == 0)
    console.log("Fizz")
  else if (current % 5 == 0)
  console.log("Buzz")
  else
      console.log(current)
}

// Functions

// Complete the `minimum` exercise.
function min(num1,num2){
  if (num1 < num2)
      return num1;
    else if (num1 > num2)
      return num2;
    else
      return "They're the same?";
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  amReal: true,
  name: "Lauren",
  age: 27,
  foods: ["rice", "kale/spinach", "various chocolates but never plain"],
  quirk: "I've been to 3 Harry Potter conventions"
};
console.log(me.amReal);
console.log(me.name);
console.log(me.age);
console.log(me.foods);
console.log(me.quirk);