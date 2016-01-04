/* Person 1
As a user, I want to be able to calculate certain math stuff, from a set/group of numbers [regardless of if there are an even amount or odd amount of numbers], so that I do not have to do this math on my own, and can just provide the list of numbers. I'd like to be able to just put it in a set so that I don't have to keep entering them.
First, I want to be able to have a function sum, so that I can know the total of these numbers. Like if this was my profits I'd know the sum of all profits.
Second I want this calculator to have a mean function, so that I know the mean or average number, perhaps to know what my average sales were.
Third, I want to be able to use the median function on the set, so that I know what values are high and what values are low, so that I know the average sort of area, and what entries would be high or low.
*/
/*
PERSON 2: Translate user Stories into Psuedocode
Input: list of numbers
output: sum, mean, median
steps:
A. Declare an object called calc:
	1. Give it a function named SUM that accpets an ARRAY as a parameter
		1. Set a variable TOTAL equal to zero
		2.FOR when i (our counter variable) starts at zero; while i is less than the length of our ARRAY; we are incresing it by one each time
			1.TOTAL += ARRAY[i]
		3.RETURN TOTAL
	2.Give our object a function named MEAN that accepts an ARRAY as a parameter
		1.RETURN the result of (calling the SUM function we just wrote with our ARRAY as a parameter then dividing it by the length of our ARRAY)
	3.Give our object a function called MEDIAN that takes an ARRAY as a parameter
		1.Set a variable to PLACE equal to ARRAY's length divided by 2 round down the answer if its a decimal
		2.IF ARRAY is even
			1.RETURN  ((ARRAY[PLACE] plus ARRAY[PLACE + 1]) divided by 2)
		3.ELSE
			1. RETURN ARRAY[PLACE]
B. CAll our methods to check if our code is good.
*/

//PERSON 3: Concert Psuedocode to Program
//Brigitte Kozena
// "NOTE : This works however, I have not actually done the previous assignments and reading on Java Script yet so am unfamiliar with creating the Calc object. If anyone could assist me with that I would appreciate it.

    // var SUM = function (ARRAY){
	   //  var TOTAL = 0
	   //  for (var i = 0; i < ARRAY.length; i++){
		  //   TOTAL += ARRAY[i]
	   //  }
	   //  return TOTAL
    // }

    // var MEAN = function (ARRAY){
	   //  return (SUM(ARRAY) / ARRAY.length)
    // }


    // var MEDIAN = function (ARRAY){
	   //  var PLACE = ARRAY.length / 2
    //     PLACE =	Math.floor(PLACE)
	   //  if (ARRAY.length % 2 === 0)
		  //   return ((ARRAY[PLACE] + ARRAY[PLACE -1])/2)
	   //  else
		  //   return ARRAY[PLACE]
    // }
    // console.log(SUM([1,2,3]))
    // console.log(MEAN([1,2,3]))
    // console.log(MEDIAN([1,2,3]))

    // console.log(SUM([1,2]))
    // console.log(MEAN([1,2]))
    // console.log(MEDIAN([1,2]))

    //PERSON 4:
    // Refactored code
    // Brigitte did a great job so there is very little I could do in terms of refactoring. All I have done is changed the function definitions to delarations.
    // I couldn't find anything else that could be refactored.

    function sum(ARRAY){
      var TOTAL = 0
      for (var i = 0; i < ARRAY.length; i++){
        TOTAL += ARRAY[i]
      }
      return TOTAL
    }

   function mean(ARRAY){
      return (sum(ARRAY) / ARRAY.length)
    }


    function median (ARRAY){
      var PLACE = ARRAY.length / 2
        PLACE = Math.floor(PLACE)
      if (ARRAY.length % 2 === 0)
        return ((ARRAY[PLACE] + ARRAY[PLACE -1])/2)
      else
        return ARRAY[PLACE]
    }
    // User stories.
    // SUM:  As a user I want to find the total of a series of numbers.
    // MEAN: As a user I want to find the mean if a series of numbers.
    // MEDIAN:  As a user I want to find the median of a series of numbers.
//Person 1 again
// Hey, so the code did not pass any of the tests. It threw up a lot of syntax errors. I wasn't sure if I was supposed to go in and fix it? Basically, it threw about 12-15 errors, all syntax. None of the tests worked. So. There's that.