def caesar_cipher(str, num)
   newStr=[]
   # Split the string in an array of characters
   str.split("").each do |letter|
      # a -> z and A -> Z are integers from 97 -> 122 and  65 -> 90
      # Check if the character is Cap or not and define floor
      # to keep selectables values in the alphabet only among the
      # letters avoiding modify symbols.       
      floor = letter.ord < 91 ? 65 : 97
      # If the character is a letter Cap or Low, sum 5 to its value 
      # Then transform the number back into a character     
      if (letter.ord <= 90 && letter.ord >= 65) || (letter.ord <= 122 && letter.ord >= 97)
          newLetter = letter.ord + num  
          newLetter = newLetter.chr      
      else
      # If it is not let the character as it is    
         newLetter = letter
      end 
      # Add the new characters into an array
      newStr.push(newLetter)
   end  
   # Use join to 'join' the array of characters into a string 
   return newStr.join("")
end   

puts caesar_cipher("What a string!", 5)