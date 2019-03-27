# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is num of elements in string
# Space complexity: O(1) no new space is created in algorithm
def reverse_sentence(my_sentence)
  # nil check 
  return my_sentence if my_sentence == nil || my_sentence.length == 0

  # counter for word reverse; space before first character
  left = 0
  right = my_sentence.length - 1

  while left < right
    temp = my_sentence[left]
    my_sentence[left] = my_sentence[right]
    my_sentence[right] = temp
    left += 1
    right -= 1
  end

  i = 0

  while i < my_sentence.length - 1
    left = i

    while my_sentence[i] != " " && my_sentence[i] != nil
      i += 1
    end

    right = i - 1

    while left < right
      temp = my_sentence[left]
      my_sentence[left] = my_sentence[right]
      my_sentence[right] = temp

      left += 1
      right -= 1
    end

    i += 1
  end

  return my_sentence
end
