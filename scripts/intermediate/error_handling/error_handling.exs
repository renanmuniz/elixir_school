# At the moment, the Elixir community has come to some conventions regarding returning errors:

# For errors that are part of the regular operation of a function (e.g. a user entered a wrong type of date),
# a function returns {:ok, result} and {:error, reason} accordingly.

# For errors that are not part of normal operations (e.g. being unable to parse configuration data) you throw an exception.


#ERROR HANDLING

#lancar erro:
raise "Ocorreu um erro!"
# ** (RuntimeError) Ocorreu um erro!

#especificar o erro:
raise ArgumentError, message: "O argumento informado é inválido!"
# ** (ArgumentError) O argumento informado é inválido!


#Tratando erros("try - catch do java"):
try do
  raise "ERRO NO PROCESSAMENTO DA REQUISIÇÃO"
rescue
  e in RuntimeError -> IO.puts("Ocorreu um erro: #{e.message}")
end
# Ocorreu um erro: ERRO NO PROCESSAMENTO DA REQUISIÇÃO
# :ok


#After ("finally do java")
try do
  raise "ERRO NO PROCESSAMENTO DA REQUISIÇÃO"
rescue
  e in RuntimeError -> IO.puts("Ocorreu um erro: #{e.message}")
after
  IO.puts("Redirecionando requisição para a DLQ")
end
# Ocorreu um erro: ERRO NO PROCESSAMENTO DA REQUISIÇÃO
# Redirecionando requisição para a DLQ
# :ok

# This is most commonly used with files or connections that should be closed:

#Vá para o diretorio do arquivo abaixo antes de executar o iex
#cd elixir_school/scripts/intermediate/error_handling
{:ok, file} = File.open("example.json")

try do
  # Do hazardous work
after
  IO.puts("Fechando arquivo!")
  File.close(file)
end
# Fechando arquivo!


#Criando erros personalizados
defmodule ExampleError do
  defexception message: "an example error has occurred"
end

try do
  raise ExampleError
rescue
  e in ExampleError -> IO.puts(e.message)
end
# an example error has occurred


# try catch
# É menos comum seu uso:
try do
  for x <- 0..10 do
    if x == 5, do: throw(x)
    IO.puts(x)
  end
catch
  x -> "Caught: #{x}"
end
# 0
# 1
# 2
# 3
# 4
# "Caught: 5"
# The throw/1 function gives us the ability to exit execution with a specific value we can catch and use.




