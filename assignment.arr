import file("lab2-support.arr") as support

#Encryptor 1
support.encryptor1("Beini!")

fun myencryptor1(s1 :: String) -> String:
  doc:"repeat the string for five times"
  string-repeat(s1,5)

where:
  
  myencryptor1("B") is support.encryptor1("B")
 
end

#Encryptor 2
support.encryptor2("Beini!")

fun myencryptor2(
    s2 :: String) 
  -> String:
  doc:"only keeps four digits of the string"
  string-substring(s2, 0 , 4)
  
where:
  
  myencryptor2("12345678") is support.encryptor2("12345678")
  
end


#Encryptor 3
support.encryptor3("Beini")
support.encryptor3("micr1234")

fun myencryptor3(
    s3 :: String)
  -> String:
  doc:"returns just the string as it is"
  print(s3)
  
where:
  
  myencryptor3("12345") is support.encryptor3("12345")
  
end


#Encryptor4
support.encryptor4("abcdefg")
support.encryptor4("123456789")


fun myencryptor4(s4 :: String) 
  -> String:
  doc:"returns repeat 5 times of the first 4 digits of the string"
  string-repeat(string-substring(s4,0,4),5)
  
where:
  
  myencryptor4("123456789") is support.encryptor4("123456789")
  
end

#Encryptor5

support.encryptor5("beii")
support.encryptor5("introduction")

fun myencryptor5(s5 :: String)
  ->String:
  doc:"shift all the vowels to the next character in alphebatic order."
  string-replace(
    string-replace(
      string-replace(
        string-replace(
          string-replace("a","b"),
          "e","f"),
        "i","j"),
      "o","p"))
where:
    myencryptor5("beinii") is support.encryptor5("beinii")
  end
  
  


#Encryptor6
support.encryptor6("Rrrr")
support.encryptor6("beini")
support.encryptor6("hello")

fun myencryptor6(s6 :: String) 
  -> String:
  doc:"remove all the r,R in the string "
  string-replace(string-replace(s6, "r", ""), "R", "")
  
where:
  myencryptor6("river") is support.encryptor6("river")
 
end



#Encryptor7
support.encryptor7("beini")
support.encryptor7("abccdefg")

fun myencryptor7(s7 :: String)
  -> Number:
  doc:"returns the string length of the string"
  string-length(s7)
  
where:
  myencryptor7("hello") is support.encryptor7("hello")
  
end


#Encryptor8
support.encryptor8("abcdefg")
support.encryptor8("beini")

fun myencryptor8(s8 :: String)
  -> String:
  doc:"first add three !!! to a string, and repeat it three times"
  
  string-repeat(s8 + "!!!", 3)
  
where:
  myencryptor8("beini") is support.encryptor8("beini")
  
end


#Encryptor9
support.encryptor9("abcdefg")
support.encryptor9("beini")
support.encryptor9("posium")

fun myencryptor9(s9 :: String)
  -> Number:
  doc:"convert s to a unqiue code of it"
  
  string-to-code-point(string-substring(s9, 0,1))
  
where:
  myencryptor9("beini") is support.encryptor9("beini")
end


#Encryptor10
support.encryptor10("uuuu")
support.encryptor10("aeio")

fun myencryptor10(s10 :: String)
  -> String:
  doc: "take the first 4 characters, and shirts all the characters with a vowel to the next one in alphabetic order, and then repeat for 5 times."
  first-4-digits = string-substring(s10,0,4)
  vowel-shifted = string-replace(
    string-replace(
      string-replace(
        string-replace(
          string-replace(first-4-digits,"a","b"),
          "e","f"),
        "i","j"),
      "o","p"),
    "u","v")
  string-repeat(vowel-shifted,5)

where:
  myencryptor10("beini") is support.encryptor10("beini")
  
end
