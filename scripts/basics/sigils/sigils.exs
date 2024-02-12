# Elixir provides an alternative syntax for representing and working with literals, called sigils.

# A sigil starts with a tilde ~ and is followed by an identifier and a pair of delimiters. Prior to Elixir 1.15, the identifier must be a single character. As of 1.15, the identifier may also be a string of multiple uppercase characters.

# The Elixir core provides us with some built in sigils, however, it is possible to create our own when we need to extend the language.

# A list of available sigils include:

# ~C Generates a character list with no escaping or interpolation
# ~c Generates a character list with escaping and interpolation
# ~R Generates a regular expression with no escaping or interpolation
# ~r Generates a regular expression with escaping and interpolation
# ~S Generates a string with no escaping or interpolation
# ~s Generates a string with escaping and interpolation
# ~W Generates a word list with no escaping or interpolation
# ~w Generates a word list with escaping and interpolation
# ~N Generates a NaiveDateTime struct
# ~U Generates a DateTime struct (since Elixir 1.9.0)
# A list of delimiters include:

# <...> A pair of pointy brackets
# {...} A pair of curly brackets
# [...] A pair of square brackets
# (...) A pair of parentheses
# |...| A pair of pipes
# /.../ A pair of forward slashes
# "..." A pair of double quotes
# '...' A pair of single quotes


#CHARLIST
#~c faz a interpretação/interpolação
inspect(~c/2 + 7 = #{2 + 7}/) #"~c\"2 + 7 = 9\""

#~C NÃO faz a interpretação/interpolação
inspect(~C/2 + 7 = #{2 + 7}/) #"~c\"2 + 7 = \\\#{2 + 7}\""


#Regular expressions
#Criando a expressão regular:
re = ~r/renan/
"Renan" =~ re #false
"renan" =~ re #true

#Adicionando o parametro 'i' para ficar case insensitive
re = ~r/renan/i
"Renan" =~ re #true
"renan" =~ re #true


#Regex
s = "1000_000_000"
Regex.split(~r/_/, s) #["1000", "000", "000"]

Regex.run(~r/^[A-Za-z0-9._%+\-+']+@[A-Za-z0-9.-]+\.[A-Za-z]+$/,"renan@gmail.com")
#["renan@gmail.com"]

Regex.run(~r/^[A-Za-z0-9._%+\-+']+@[A-Za-z0-9.-]+\.[A-Za-z]+$/,"renangmail.com")
#nil

Regex.run(~r/^[A-Za-z0-9._%+\-+']+@[A-Za-z0-9.-]+\.[A-Za-z]+$/,"renan@gmail")
#nil


#STRING
inspect(~s/testando sigils com string! Interpolando a soma: 2 + 2 = #{2+2}/)
#"\"testando sigils com string! Interpolando a soma: 2 + 2 = 4\""

inspect(~S/testando sigils com string! Interpolando a soma: 2 + 2 = #{2+2}/)
#"\"testando sigils com string! Interpolando a soma: 2 + 2 = \\\#{2+2}\""


#WORDLIST
~w/testando lista de palavras com sigils!/
#["testando", "lista", "de", "palavras", "com", "sigils!"]

~w/testando lista de palavras com interpolação: #{2 * 2}/
#["testando", "lista", "de", "palavras", "com", "interpolação:", "4"]

~W/testando lista de palavras SEM interpolação: #{2 * 2}/
#["testando", "lista", "de", "palavras", "SEM", "interpolação:", "\#{2", "*","2}"]


#DATETIME
DateTime.from_iso8601("2024-02-11 21:53:00Z")
#{:ok, ~U[2024-02-11 21:53:00Z], 0}

#Passando offset de timezone
DateTime.from_iso8601("2024-02-11 21:53:00-0300")
#Retornou a hora em UTC:
#{:ok, ~U[2024-02-12 00:53:00Z], -10800}
# -10800 é a diferença em segundos para o horario passado, estamos(GMT-3) 10800 segundos atrás da hora UTC
# 3 * 60 * 60 = 10800


