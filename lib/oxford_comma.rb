# def line(katz_deli)
#   if katz_deli.empty? #if the line is empty
#     puts "The line is currently empty."
#   else
#     new_array = [] #this is a variable to hold the output string for the #line method
#     katz_deli.each_with_index { |name, index| new_array.push("#{index+1}. #{name}")} #note: name can be called anything
#     final_sentence = "The line is currently: " + new_array.join(" ") #.join(" ") adds a space between each 'index. name' pair (.to_s was giving me the wrong output, with "quotes" around 'index. name' pairs)
#     puts final_sentence
#   end #end if..elsif statement
# end #end method


def oxford_comma(array)
  if array.length >= 3
    array.insert(-2, "and") #insert "and" before the second to last element (AKA '-2' from end of array)
    array[0...-1].join(", ") + " " + array[-1] #join the range of elments within array excluding the last element (AKA [0...-1]) with a ", " and add that value to " ", and add that value to the final element in the array (AKA array[-1])
    #note: [0...-1] with three dots creates an inclusive range (AKA including the start point and end point), while [0..-1] with two dots creates an exclusive range (AKA excluding the end point)

    #array[0..-2].join(", ") + ", and " + array[-1]
    #note: could also replace lines 15 and 16 with line 19, using array[0..-2] which exludes the last two elements, joining all those elements with a comma, then adding ", and " and adding the last element (AKA array[-1])
  elsif array.length == 2
    array.join(" and ")
  else
    array.join(", ") #join array elements with (", ") and return the array as a string
  end #end if..else
end


# def oxford_comma(array)
#   if array.length >= 3
#       array.join(", ") << " and"
#   elsif array.length == 2
#       array.join(" and ")
#   else
#     array.join(", ")
#   end #end if..else
# end
