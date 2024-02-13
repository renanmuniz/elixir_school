#STRINGS
#Elixir strings are nothing but a sequence of bytes

s = <<104,101,108,108,111>>
# "hello"



#CODEPOINTS
# Codepoints are just simple Unicode characters which are represented by one or more bytes,
# depending on the UTF-8 encoding.


#Graphemes consist of multiple codepoints that are rendered as a single character
string = "\u0061\u0301"
# "á"

String.codepoints string
# ["a", "́"]

String.graphemes string
# ["á"]



#STRING FUNCTIONS

#LENGTH
String.length "Hello"
# 5

#REPLACE
String.replace("Hello", "e", "a")
#"Hallo"


#DUPLICATE
String.duplicate("Oh my ", 3)
# "Oh my Oh my Oh my "


#SPLIT
String.split("1,RENAN,33,BRAZIL", ",")
# ["1", "RENAN", "33", "BRAZIL"]


#UPCASE
String.upcase("renan")
"RENAN"


#DOWNCASE
String.downcase("RENAN")
# "renan"


