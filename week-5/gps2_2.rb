def grocery_list(items)
  the_list = Hash.new(0)
  items.split(" ").each {|x|
    the_list[x] += 1
  }
  return the_list
end
puts grocery_list("eggs eggs")

def add_to(the_list, new_item, quantity)
# input: the previously created list of groceries' hash, item name and optional quantity [new_item, quantity]
# steps: it should take the items it should also check if it is in there and add if it is. and their value and add them to the hash
# like the_list.each do |item| if item = new_item then the_list[item] += quantity.to_i
# p "this was already here, so we added more!"
#else the_list[new_item] = quantity.to_i
#end end
# output: a hash containing the input and everything else.
end

def remove_item(the_list, remove_this)
# input:items item name and optional quantity
# steps: find key, remove key and value return updated hash
# like the last time but
# the_list.each do |item| if item = new_item then the_list[item] = 0
#end end
# output: p updated hash
end

def update_number(the_list, item, quantity)
# input: give item and new amount
# steps: take item and change value to new amount
# again, like:
# the_list.each do |item| if item = new_item then the_list[item] = quantity.to_i
#end end
# output: p updated hash
end

def print_list(hash)
# input: takes the hash as input
# steps: takes the key and prints it neatly next to it's value
# output: something like p "key: #{value}"
end