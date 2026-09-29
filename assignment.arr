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
#|i couldn't figure out what the secret behind the code
support.encryptor5("beii")
support.encryptor5("introduction")

fun myencryptor5(s5 :: String)
 -> String:
|#


#Encryptor6
support.encryptor6("beini")
support.encryptor6("introduction")

