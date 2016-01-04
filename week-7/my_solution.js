 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Create a game of "Rock Paper Scissors Lizard Spock"
// Overall mission: Let the user play RPSLS as many times as they choose.
// Goals: Have the user play the game until they run out of turns. regenerate the input every time so they can keep guessing
// Characters: User, AI
// Objects: User input, random AI input, score board
// Functions: compare user and AI input, say who won, check score

// Pseudocode
// create a user object
// give it a name from prompt
// ??prompt them if they'd like to play
// ??store as player continuance
// take user input store as user pick
// randomly generate AI pick
// say who won the round and record their name in a scoreboard option
// Initial Code
var player = {};
player.name = prompt("Welcome to Rock, Paper, Scissors, Lizard, Spock! What's your name, challenger?");
player.turns = Math.floor(prompt("You wanna play how many rounds?"));
player.wins = 0;
console.log(player);

var AI = {};
AI.name = prompt("Name your opponent?");
AI.choice = "";
AI.wins = 0;
console.log(player);

player.choice = prompt("OK!! Choose: rock, paper, scissors, lizard, spock!");
function doSomething(input) {
  if (input < 0.2)
    input = "rock";
  else if (input < 0.4)
    input = "paper";
  else if(input < 0.6)
    input = "lizard";
  else if (input < 0.8)
    input = "spock";
  else if (input > 0.8)
    input = "scissors";
  return input;
  }
AI.choice = doSomething(Math.random());
function compare(userObj, aiObj, timesPlayed) {
  var userPick = userObj.choice;
  var aiPick = aiObj.choice;
  for (var i = 0;i < timesPlayed; i++){
    console.log(userPick);
    console.log(aiPick);
    if (userPick === aiPick) {
      player.wins +=1;
      AI.wins +=1;
      console.log("The result is a tie! Points for both of you!");
    } else if (
      (userPick === "rock" &&
        (aiPick === "scissors" || aiPick === "lizard")) ||
      (userPick === "scissors" &&
        (aiPick === "lizard" || aiPick === "paper")) ||
      (userPick === "lizard" &&
        (aiPick === "paper" || aiPick === "Spock")) ||
      (userPick === "paper" &&
        (aiPick === "Spock" || aiPick === "rock")) ||
      (userPick === "Spock" &&
        (aiPick === "rock" || aiPick === "scissors"))){
        userObj.wins +=1;
        console.log("Congrats to you, "+ userObj.name +"!");
      } else {
        aiObj.wins +=1;
        console.log("Congrats to " + aiObj.name + "; the computer wins this round.");
      }
      userPick = prompt("Next turn? Guess again?");
      aiPick = doSomething(Math.random());
  }
}
console.log(compare(player, AI, player.turns));
console.log("You: " + player.wins);
console.log(AI.name + ": " + AI.wins);
// // Reflection
// What was the most difficult part of this challenge?
// I think it was budgeting time and sort of shortening my goals. I started off with this huge plan and then went back and tried to put ??next to anything I thought I would not be able to complete or as optional. I got it to work with no prompts, and then slowly added them back in. However, I'm still one element short of perfection - it prompts one two many times. I couldn't find an element in time to help me with this and I did get almost all of my other goals completed. However, I'm not entirely happy with it. I just feel like I have a MVP, I can post it. But I know there are little tweaks that could make this REALLY nice.
// What did you learn about creating objects and functions that interact with one another?
// I learned that it can be really messy. I tried to space everything out - mostly because code doesn't mind whitespace but it makes it easier for me to read to try and keep things legible like that.
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned Math.floor, and Math.random, which helped me randomly generate numbers. I also really got comfortable with some now not particularly useful stuff. I tried switch-ing and it worked but not particularly well for what I needed.
// How can you access and manipulate properties of objects?
// I mostly used the .properties version of accessing. I really like that these properties can just be accessed and set by going Lauren.name = "Lauren R" and you get that stored. even if there hadn't been a value before. It's also nice to use for temp values and things. Like in this I have to constantly reset the guess for the computer. It's harder than I thought it would be.