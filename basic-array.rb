#sum of elements of array

def sum arr
  total = 0
    if arr.empty?
      return total
    else
      arr.each { |i| total += i }
      return total
    end
end

# sum of two max number from array
def max_2_sum arr
    total = 0;
    largest1 =arr.to_a[0]
    largest2 =arr.to_a[1]

    if arr.empty?
      return total
    elsif arr.length == 1
        return total = arr[0]
    else
      arr.each_with_index do |x,i|
        if i >1  
          if x >= largest1
              largest2 = largest1
              largest1 = x
          elsif x < largest1 && x >= largest2
              largest2 = x
          end
        end
      end
      return total = largest2 + largest1
    end      
end

# takes an array and integer, returns true if the sum of any two elements of array is equal to n otherwise return false
def sum_to_n? arr, n
    if arr.empty?
      return false
    elsif arr.length == 1
        return false
    else
      arr.each_with_index do |v,k|  
        arr.each_with_index do |vi,ki|
          if ki != k
            if n == (v + vi) 
              return true
            end
          end
        end
      end
    end
    return false
end


# return true if a string include vowels otherwise false
def starts_with_consonant? s
  vowel =['a','e','i','o','u','A','E','I','O','U']
  if vowel.include?(s.slice(0, 1)) || s.empty? || !s.match(/^[[:alpha:]]+$/)
    return false
  else
    return true
  end
end



