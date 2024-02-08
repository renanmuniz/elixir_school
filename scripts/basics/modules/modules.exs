# Modules allow us to organize functions into a namespace. In addition to grouping functions,
# they allow us to define named and private functions


defmodule Example do
  def greeting(name) do
    "Hello #{name}."
  end
end

# Example.greeting "Sean"
# "Hello Sean."


# Modulos aninhados
defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}."
  end

  def evening(name) do
    "Good night #{name}."
  end
end

# Example.Greetings.morning "Sean"
# "Good morning Sean."



#Atributos de modulos
# Module attributes are most commonly used as constants in Elixir

defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

Example.greeting("Renan")
# "Hello Renan."



#STRUCTS

# Structs are special maps with a defined set of keys and default values.
# A struct must be defined within a module, which it takes its name from.
# It is common for a struct to be the only thing defined within a module.

# To define a struct we use defstruct along with a keyword list of fields and default values:

defmodule Example.User do
  defstruct name: "Sean", roles: []
end

# iex(2)> %Example.User{}
# %Example.User{name: "Sean", roles: []}

%Example.User{name: "Renan"}
# %Example.User{name: "Renan", roles: []}

%Example.User{name: "Renan", roles: ["Java Dev", "Elixir Dev"]}
# %Example.User{name: "Renan", roles: ["Java Dev", "Elixir Dev"]}

#Atualizando uma struct
renan = %Example.User{name: "Renan", roles: ["Java Dev", "Elixir Dev"]} #%Example.User{name: "Renan", roles: ["Java Dev", "Elixir Dev"]}
renan_new = %{renan | roles: ["Elixir Dev Only"]} #%Example.User{name: "Renan", roles: ["Elixir Dev Only"]}


#ALIAS
# Allows us to alias module names

defmodule Saudacoes.Ola do
  def ola_basico(nome) do
    "Olá, #{nome}"
  end
end

defmodule Exemplo1 do
  alias Saudacoes.Ola
  def saudar(nome) do
    Ola.ola_basico(nome)
  end
end

defmodule Exemplo2 do
  alias Saudacoes.Ola, as: Ola
  def saudar2(nome) do
    Ola.ola_basico(nome)
  end
end

Exemplo2.saudar2("Renan")
# iex(11)> Exemplo2.saudar2("Renan")
# "Olá, Renan"


#IMPORT
# If we want to import functions rather than aliasing the module we can use import

last([1, 2, 3])
# error: undefined function last/1 (there is no such import)

import List
# iex(12)> import List
# List

last([1, 2, 3])
# iex(13)> last([1, 2, 3])
# 3


#ONDE PAREI... Modules -> Filtering
