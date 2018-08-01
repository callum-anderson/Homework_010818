stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")

# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops[4,0] = "Polmont"
#alternative
#stops.insert(4, "Polmont")

# 4. Work out the index position of `"Linlithgow"`
stop_counter = -1
for stop_name in stops
  stop_counter += 1
  break if stop_name == "Linlithgow"
  end
p "The index position of Linlithgow is #{stop_counter}."
# 5. Remove `"Livingston"` from the array using its name
#stops -= ["Livingston"]
#alternative
#stops.delete_if{|i|i=="Livingston"}
#to delete only one instance...
stops.delete_at(stops.index("Livingston"))
# 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)
#alternative - to be sure if index...
#stops.delete_at(stops.index("Cumbernauld"))
# 7. How many stops there are in the array?
p stops.length()
# 8. How many ways can we return `"Falkirk High"` from the array?
#assuming if index is known...
p stops[2]
#or reversing...
p stops[-5]
#or iterating through:
stop_counter = -1
for stop in stops
  stop_counter += 1
  if stop == "Falkirk High"
    p "#{stop} found at index #{stop_counter}."
  end
end
# 9. Reverse the positions of the stops in the array
p stops.reverse!
# 10. Print out all the stops using a for loop
for stop in stops
  p stop
end
