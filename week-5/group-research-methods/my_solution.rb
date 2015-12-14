# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Liam Mackey
def my_array_finding_method(source, thing_to_find)
  ans = source.select {|x| x.to_s.include?(thing_to_find)}
  return ans
end

def my_hash_finding_method(source, thing_to_find)
  hash = source.select {|k,v| v == thing_to_find }
  ans = hash.keys
  return ans
end

# Identify and describe the Ruby method(s) you implemented.
#I used several methods but tye predominant method used for this challenge was select.
#Select looks through every element of an array or key and value in a has and then returns any element or key value pair that returns true for the conditional
# I also used the include method whcih returns true if the string includes the argument passed to include.
# Lastly I used the keys method which returns the keys in a hash
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
##I used several methods but tye predominant method used for this challenge was select.
#Select looks through every element of an array or key and value in a has and then returns any element or key value pair that returns true for the conditional
# I also used the include method whcih returns true if the string includes the argument passed to include.
# Lastly I used the keys method which returns the keys in a hash
#
#To use the select method you simply write *.select {} and put your conditional in the curly braces
# it should look like this array.select {|x| x > 5} this block will return every element in the array that is greater than five
# I found select to be a super handy method
# Release 3: Reflect!

# What did you learn about researching and explaining your research to others?
#I learned that you have to really read the ruby docs carefully. Youc ould find a method that works, in my case each, but if you go further you can refactor your code even more.
# Explaining my research really helped solidify the concepts I researched in my head. I really feel that I now have the good research skills that will help me succeed at DBC and as long as I continue to pass that info on to others I will continue to solidify it in my head
#One handy trick for using ruby docs is to guess the name of the method ad start there because many times you can guess what it is called and save yourself some time

# Person 2 - Brigitte Kozena
def my_array_modification_method!( i_want_pets, number)
  position = 1
  i_want_pets.each do |x|
    if x.is_a?(Integer)
      y = x + number
      i_want_pets[position] = y
    end
    position += 1
  end
  print i_want_pets
end

def my_hash_modification_method!(my_family_pets_ages, number)

	my_family_pets_ages.each do |k , v|
		my_family_pets_ages[k] = v + number
	end 
	print my_family_pets_ages
end


=begin 
Identify and describe the Ruby method you implemented
- I have created two methods. The first changes the number of pets in an array. 
- The second changes the age of pets in a hash
Teach your accountability group how to use the methods
 my_array_modification_method!( i_want_pets, number)
 i_want_pets is the array you want to insert
 number is the number you want to increase the current numbers in the array by
 my_hash_modification_method!(my_family_pets_ages, number)
 my_family_pets_ages is the hash you will insert
 number is the number that all ages will increase by 
=end
# Person 3 - Joanna Lonn

# Alphabetize array - nondestructive

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]

def my_array_sorting_method(array)
  array.sort {|x,y| x.to_s <=> y.to_s}
end

my_array_sorting_method(i_want_pets)

# Arrange data in hash by age - nondestructive

my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
  "Annabelle" => 0, "Ditto" => 3}

def my_hash_sorting_method(hash)
 hash.sort_by { |name, age| age}
end

my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# For the Alphabetize array challenge I used the .sort method, set the array values to string and used the combined comparison operator to alphabetize the array.
#
# For the Arrange Data in a Hash challenge I used the sort_by enumerator to sort the hash by age.

# Person 4 - Peter Lowe
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|x| x.to_s.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |key,value| key == thing_to_delete }
end

# Identify and describe the Ruby method(s) you implemented.
# I used .delete_if for both solutions.  This method is followed by a block and deletes any element for which
# the block evaluates to true.  The deletion occurs instantly every time the block is called rather than at the
# end of the iteration.
# In the array method I also used .include? which evaluates weather an object includes a specifed substring or value.
# I also used .to_s before calling .include to convert any integer elements to strings (.include cannot be called on fixnums)

# Person 5 Me, Lauren Reid
def my_array_splitting_method(source)
  new_array =[]
  new_array.push(source.select {|item| item.is_a? Integer})
  new_array.push(source.select {|item| item.is_a? String})
  p new_array

end
def my_hash_splitting_method(source, age)
  new_array =[]
  new_array.push((source.select {|pet, num| num <= age}).to_a)
  new_array.push((source.select {|pet, num| num > age}).to_a)
  p new_array
end
# Identify and describe the Ruby method(s) you implemented.
# I used push to put everything into arrays. I used select (which I saw in the first solution, and thus investigated) to pull the appropriate information and compare it. I also used .to_a, which I discovered because I couldn't get it to an array and then i was like there must be a To method and yo there is.
# Teach your accountability group how to use the methods.
# Basically, put your array in the splitting method and you'll get an array containing an array of the ages of your pets and one of their names. The hash splitter takes the given hash and an age and sorts all the dogs that age and younger puts them & their age in one array and the older ones in another.
# Share any tricks you used to find and decipher the Ruby Docs
# Read that "how to" thing they linked. It was really good. helpful. Wish I'd read that Monday.
