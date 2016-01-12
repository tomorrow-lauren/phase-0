// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
h1Element = $('h1')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('h1:first').css({ "color": "#212121", "border": "5px solid #ccc", "visibility": "visible"});
$(".mascot h1").html("squirrels");

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $("img").hover(function(e){
    e.preventDefault()
    $(this).attr('src', 'https://i.ytimg.com/vi/4yikpWtIFU8/maxresdefault.jpg')
  })
  $("img").mouseleave(function() {
    $(this).attr('src', "dbc_logo.png");
  });
//RELEASE 5: Experiment on your own

$("img").click(function() {
  $("img").animate({
    width: "25%",
    opacity: 0.5,
    marginLeft: "0.6in",
    borderWidth: "5px"
  });
});


})
// end of the document.ready function: do not remove or write DOM manipulation below this.

// REFLECTIONS
// What is jQuery?
// jQuery is a JavaScript library that handles the events, what happens and how to streamline interactions with users. It handles things like clicking or hovering on things, allowing for manipulation of elements in a visual/interactive sense.
// What does jQuery do for you?
//It allows you to have things change. It also allows you to change your JS or CSS or html on the site itself. so you can have HTML saying one thing and click and the words chaaange.
// What did you learn about the DOM while working on this challenge?
// I did some of the reading for the other challenge, and I learned a bit about how the JS stuff and DOM. The Document Object Model is an API that interacts with HTML. I think I shall do more reading this week.