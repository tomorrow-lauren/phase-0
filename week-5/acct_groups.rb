=begin
the method
takes the list of class mates
goes through the list [array?]
and takes 3 ppl and puts them in a new array.
=end
def accountability_group(array)
  puts array.count
  groups =[]
  excess = []
  if array.count <=2
    p array
  else
    for i in 3..4 do
      if array.count.to_i % i == 0
        groups = array.each_slice(i).to_a
      elsif array.count.to_i % i == 1
        groups = array.each_slice(i).to_a
        excess = groups.pop
        groups.last.concat(excess)
      elsif array.count.to_i % i == 2
        groups = array.each_slice(i).to_a
        excess = groups.pop
        groups.last.push(excess[1])
        groups[-2].push(excess[2])
      else
        groups = array.each_slice(i).to_a
      end
    end
  end
  p groups
end
accountability_group(["Alex Forger", "Alexander Nelson","Karen Ball""Christopher Bovio","Gino Paul M. Capio","Jonathan Chin","Claire Samuels","Ray Curran","David Louie","David Spivey","Max Davis","Devin Mandelbaum","Afton Downey","Jordan Fox","Rebecca Gahart","Gary Wong","Hodges Glenn","Everett Golden", "Christopher Graf","Alana Hanson","LeeAnne Hawley", "Sabri helal","Thomas Huang", "Jeff Schneider","Jillian Dunleavy","Kevin Huang","Khamla Phimmachack","KT Khoo","Andrew s Kim", "Joseph Kim","Nathan Knockeart","Brigitte Kozena","Donald Lang","Tiffany Larson","Liam Mackey","Johanna Lonn","Tyler McKenzie","Katie Meyer","Meagan Munch","Lucas Nagle","Lydia Nash","Jovanka Nikolovski""James O'Neal","Greg Park","Patrick Oliphant","Peter Lowe","Lauren Reid","Roche Janken","David Rothschild","Susan Savariar","Kurt Schlueter","Sharon Claitor","Marshall Sosland","Catie Stallings","Steven King","Eric Tenza","Timur Catakli","Todd Seller","Dan Turcza","Lindsey Ullman","Raj Vashist","Violet Dang","Chris Wong","Angelika Yoder","Michelle Zulli"])
accountability_group(["weird",""])
accountability_group([0])
=begin
What was the most interesting and most difficult part of this challenge?
I liked knowing how to slice things, that helped a lot.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, I really do. I think it's helpful to think over everything that it might need to do.
Was your approach for automating this task a good solution? What could have made it even better?
What data structure did you decide to store the accountability groups in and why?
I made an array of arrays. This made sense because one, each slice slices things up and can be turned into an array pretty nicely.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Yeah, I found some neat things. Unfortunately, I think trying to test for a not our class scenario kept getting me distracted and I got our class into even groups. I also refactored it FOR EVERY CASE
=end