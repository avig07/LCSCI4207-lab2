import file("lab2-support.arr") as support

# 1. 1st encryptor repeats the string 5 times. 
support.encryptor1("hello")

fun new_encryptor1(input :: String) -> String:
  input + input + input + input + input
end

support.test-encryptor1(new_encryptor1)
  


# 2. 2nd encryptor takes the first 4 characters of the string entered

support.encryptor2("hello world") # testing

fun new_encryptor2(input :: String) -> String:
  string-substring(input, 0, 4)
end
# taking the characters of the string from the first one (0) to the fourth character 

support.test-encryptor2(new_encryptor2)


# 3. 3rd encryptor convers any periods to exclamation marks


support.encryptor3(".")

fun new_encryptor3(input :: String) -> String:
  string-replace(input, ".", "!")
end # replacing the periods to exclamation marks with string replace as punctuation marks are strings. 

support.test-encryptor3(new_encryptor3)

# 4. 4th encryptor takes the first four characters and repeats it five times. 

support.encryptor4("hello world")

fun new_encryptor4(input :: String) -> String:
  n = string-substring(input, 0, 4)
  n + n + n + n + n
end
# we take the substring from 0 to 3rd character, binding it to n and then adding it together 5 times to get the result.

support.test-encryptor4(new_encryptor4)


# 5th encryptor replaces the vowels wth the letter after the vowel in the alphabet

support.encryptor5("hello")

fun new_encryptor5(input :: String) -> String:
  s1 = string-replace(input, "a", "b")
  s2 = string-replace(s1, "e", "f")
  s3 = string-replace(s2, "i", "j")
  s4 = string-replace(s3, "o", "p")
  s5 = string-replace(s4, "u", "v")
  s6 = string-replace(s5, "A", "B")
  s7 = string-replace(s6, "E", "F")
  s8 = string-replace(s7, "I", "J")
  s9 = string-replace(s8, "O", "P")
  string-replace(s9, "U", "V")
end
# each 's' is continually changing due to the previous condition changing the vowels to the next letter, giving us the final one with all vowel strings replaced. 

support.test-encryptor5(new_encryptor5)


# 6th encryptor de-capitalises capital letters and removes r's
support.encryptor6("Tr")

fun new_encryptor6(input :: String) -> String:
  a1 = string-replace(input, "r", "")
  a2 = string-replace(a1, "R", "")
  string-to-lower(a2)
end
support.test-encryptor6(new_encryptor6)


# 7th encryptor counts the characters in the string
support.encryptor7("niii")

fun new_encryptor7(input :: String) -> Number:
  string-length(input)
end
# just checking the string length, entered as a string and the result is a number
support.test-encryptor7(new_encryptor7)

# 8th encryptor gets the input, adds 3 exclamation marks and "multiplies" the entire thing by 3. 
support.encryptor8("b")

fun new_encryptor8(input :: String) -> String:
  b1 = (input + "!!!")
  string-repeat(b1, 3)
end
  
support.test-encryptor8(new_encryptor8)



#9th Encryptor takes the input and converts it to the ASCII numerical code. More importantly, the first character of the inputted string only.

support.encryptor9("abc")
fun new_encryptor9(input :: String) -> Number:
  string-to-code-point(string-substring(input, 0,1))
end
support.test-encryptor9(new_encryptor9)

# ASCII string-to-code-point



support.encryptor10("h.eoper")
# s/w encryptor 1 then use a few encryptors (note from lab)

support.encryptor10("ABCD")
support.encryptor10("AEIO")
support.encryptor10("a.rUs")
support.encryptor10("HELLO")

# testing all possible encryptors in play



fun new_encryptor10(input :: String) -> String:
  x = new_encryptor6(input)
  y = string-substring(x, 0, 4)
  z1 = new_encryptor5(y)
  z2 = new_encryptor3(z1)
  z3 = new_encryptor1(z2)
  z3
end

#| First encryptor (6) makes the input lowercase and removes r, substring takes the first 4 characters, encryptor 5 changes the vowels, encryptor 3 changes periods to exclamation marks and the first encryptor we created repeats it 5 times. 

support.test-encryptor10(new_encryptor10)

