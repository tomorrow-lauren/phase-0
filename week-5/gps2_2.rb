
def grocery_list(items)
  the_list = Hash.new(0)
  items.split(" ").each {|x|
    the_list[x] += 1
  }
  return the_list
end

puts grocery_list("eggs eggs")


# set default quantity
# print the list to the console: when
# output: should be a hash
# def add_to

# Method to add an item to a list
# input: item name and optional quantity
# steps: it should take the items and their value and add them to the hash
# output: a hash containing the input and everything else.

# Method to remove an item from the list
# input:items item name and optional quantity
# steps: find key, remove key and value return updated hash
# output: p updated hash

# Method to update the quantity of an item
# input: give item and new amount
# steps: take item and change value to new amount
# output: p updated hash

# Method to print a list and make it look pretty
# input: takes the hash
# steps: takes the key and prints it neatly next to it's value
# output: something like p "key: {#value}"
