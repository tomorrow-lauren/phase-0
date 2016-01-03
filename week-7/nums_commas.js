// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Lauren Reid

// Pseudocode
// Input: the function would take a number
// Output: that number with commas placed appropriately
// Steps:
// 1. name function add_commas
// 2. recieve number as input
// 3. convert number to string and convert string to array
// 4. find the length of the array
// 5. use length to determine where commas are needed
// 6. convert new array back to string and return new string

// Initial Solution

// function add_commas(num_comma){
//   num_comma = num_comma.toString();
//   num_comma = num_comma.split("");
//   num_comma.reverse();
//   var num_array = []

//     for (var i = 0; i < num_comma.length; i ++ ) {
//     if ((i % 3 == 0) && (i != 0)) {
//       num_array.push(",");
//     }
//     num_array.push(num_comma[i]);
//   };
//   num_array.reverse();
//   var numCommas = num_array.join('');
//   return numCommas.toString();
// };



// Refactored Solution
function add_commas(num_comma){
  num_comma = num_comma.toString().split("").reverse();
  var num_array = []

    for (var i = 0; i < num_comma.length; i ++ ) {
    if ((i % 3 == 0) && (i != 0)) {
      num_array.push(",");
    }
    num_array.push(num_comma[i]);
  }
  num_array.reverse();
  var numCommas = num_array.join('').toString();
  return numCommas;
}




// Your Own Tests (OPTIONAL)
//driver code:
console.log(add_commas(12399999967))
console.log(add_commas(1239))
console.log(add_commas(123999))

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We both approached it from our original Ruby versions. Hers was a lot more translatable than mine, in the end. The initial attempts that I have left in here are evidence of our multiple and fragemented aims.
// What did you learn about iterating over arrays in JavaScript?
// It's a lot easier than iterating over a string was in Ruby. It has much the same principal though.
// What was different about solving this problem in JavaScript?
// There's no reverse, the loops are different. and you can't change a thing really you have to add it to a new one it's a bit messier in that sense I think. Plus
// What built-in methods did you find to incorporate in your refactored solution?
//I mean we mostly just made everything neat from the original solution, but I'd never used the JS versions of most of these. They seem to work the same though, so that's nice. Split also was new to me, since I kind of didn't use arrays that much unless we had to I guess.