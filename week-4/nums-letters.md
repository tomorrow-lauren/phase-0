## RELEASE 1 REFLECT
* What does puts do?
  * It is a command of ruby code that returns nil [nothing, a non entity] and prints the answer to the console with a new line. This is useful if you don't need anything returned - some code does, which would require a different command: `p` returns the code results and prints it to the console. `Print` on the other hand does exactly that, returns nil and prints the code - on the same line.

* What is an integer? What is a float?
  * An integer is a number that is whole. `9` is an integer. A floating-point number has a decimal point. `1.2345` is a floating-point number. They are distinct because they react differently within methods.

* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  * The difference is that integer division returns only the whole number that results. Like 26 divided by 3 returns 8. This is because it only counts whole numbers. It ignores anything after the decimal point. Float division uses the decimals, providing the full end, as it were. I explained it like this to my fiancé, and he understood. Like when you hit the pad on that strength carnival game with the hammer, you don't get partial credit, you hit the numbers or you don't get that prize.

### Here's my math for the minutes in a decade
```ruby
puts (((365*10) +2) * 24) * 60
```

### Here are my exercise files
1. [Defining Variables] (https://github.com/tomorrow-lauren/phase-0/blob/master/week-4/defining-variables.rb)
2. [Simple String Methods] (https://github.com/tomorrow-lauren/phase-0/blob/master/week-4/simple-string.rb)
3. [Local Var and Basic Math](https://github.com/tomorrow-lauren/phase-0/blob/master/week-4/basic-math.rb)

## RELEASE 7 REFLECTION

* How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  * It uses the same keyboard short cuts that your computer's calculator does -, +, /, and * for subtracting, adding and multiplying. just type it like you would write it:`1 + 2 = 3`. That passes in ruby code. The spaces aren't "necessary" but it makes for more readable code.
* What is the difference between integers and floats?

  * As I explained above, integers are numbers without decimal points - whole numbers. Floats, floating-point numbers, include decimal points have decimal points in the numbers. It's `9` vs. `9.1`. They are subtle but different types.

* What is the difference between integer and float division?
  * Integer division returns the integer. even if there is anything that would exist beyond the decimal point. Float division returns a number with a decimal point. For example, `29 / 5 = 5` but `29.0 / 5.0 = 5.8` Integer is good for simple stuff or finding out how many movies you can see for 10$ if it's a 3$ cinema. Floats are good for money or academic math.

* What are strings? Why and when would you use them?
  * Strings are letters or things you can type, but between a ' and another ', they become a string, which is a specific element, and can be manipulated in many ways. They are also good for printing messages, displaying methods and other various tricks of Ruby.

* What are local variables? Why and when would you use them?
  * Local variables are ones used in a method. They do not exist outside the method, which makes the code neat. This also doesn't require the code to remember it, removing the risk of accidentally messing up the code later. If you used a local var barbie in a method it won't change the declared barbie outside the method.

* How was this challenge? Did you get a good review of some of the basics?
  * I think this was a good review of the basics. It also taught me new math things - modulus, that was fun. It was a little rote, but it worked out. I think maybe it was a little boring in some bits but hey, practice practice practice. After all, that's how you get to Carnegie Hall or make perfect.