#anonymous function

soma = fn(a,b) -> a + b end
#iex> soma.(2,3)
#5


#forma mais curta:
subtracao = &(&1 - &2)
# subtracao.(10,2)
# 8


#pattern matching em funcoes

handle_result = fn
  {:ok, result} -> IO.puts "Handling result...#{result}"
  {:error} -> IO.puts "An error has occurred!"
end
# handle_result.({:ok, 10})
# Handling result...10
# :ok


# handle_result.({:error})
# An error has occurred!
# :ok



#named functions
defmodule Saudacao do
  def ola(nome) do
    IO.puts("Olá, " <> nome)
  end
end

Saudacao.ola("Renan")
# Olá, Renan
# :ok

#funcao é definida pelo seu nome mais seus parametros
#podemos entao ter funcoes com mesmo nome e diferentes quantidade de parametros
#algo como "method overload do java"
defmodule Saudacao2 do
  def ola(nome) do
    IO.puts("Olá, " <> nome)
  end

  def ola(nome, sobrenome) do
    IO.puts("Olá, #{nome} #{sobrenome}")
  end
end
# iex(2)> Saudacao2.ola("Renan")
# Olá, Renan
# :ok
# iex(3)> Saudacao2.ola("Renan", "Muniz")
# Olá, Renan Muniz
# :ok


#funcao com pattern matching
defmodule Saudacao3 do
  def ola(%{nome: nome_da_pessoa}) do
    IO.puts("Olá, #{nome_da_pessoa}")
  end
end

renan = %{nome: "Renan", idade: 33, cidade: "Londrina"}

Saudacao3.ola(renan)
# iex(9)> Saudacao3.ola(renan)
# Olá, Renan
# :ok


#private functions
defmodule Greeter do
  def hello(name), do: phrase() <> name
  defp phrase, do: "Hello, "
end


Greeter.hello("Sean")
# iex(11)> Greeter.hello("Sean")
# "Hello, Sean"

Greeter.phrase
# iex(4)> Greeter.phrase
# ** (UndefinedFunctionError) function Greeter.phrase/0 is undefined or private
#     Greeter.phrase()
#     iex:4: (file)


#guards
defmodule Greeter do
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names)
  end

  def hello(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end
# iex(5)> Greeter.hello ["Sean", "Steve"]
# "Hello, Sean, Steve"


#Default arguments
defmodule Default_arguments do
  def executa(n1, n2, operacao \\ "soma") do
    executar(n1,n2,operacao)
  end

  defp executar(n1,n2,"soma") do
    n1 + n2
  end

  defp executar(n1,n2,"subtracao") do
    n1 - n2
  end
end

Default_arguments.executa(2,2)
# iex(8)> Default_arguments.executa(2,2)
# 4
Default_arguments.executa(2,2,"subtracao")
# iex(9)> Default_arguments.executa(2,2,"subtracao")
# 0
Default_arguments.executa(2,2,"divisao")
# ** (FunctionClauseError) no function clause matching in Default_arguments.executar/3

#     The following arguments were given to Default_arguments.executar/3:

#         # 1
#         2

#         # 2
#         2

#         # 3
#         "divisao"

#     iex:12: Default_arguments.executar/3
#     iex:10: (file)
