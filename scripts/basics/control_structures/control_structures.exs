#if and unless

if 2 > 1 do
  "Dois maior que um"
else
  "erro"
end
#"Dois maior que um"

#unless funciona no negativo, entra na condicao caso nao satisfaça
unless is_integer("teste") do
  "Not a int"
end
#"Not a int"

unless is_integer(1) do
  "Not a int"
end
#nil


#case
case :even do
  :odd -> "Odd"
  _ -> "Not Odd"
end
#"Not Odd"

case 2 do
  1 -> "Um"
  2 -> "Dois"
  _ -> "Outro numero"
end
#Dois

case 3 do
  1 -> "Um"
  2 -> "Dois"
  _ -> "Outro numero"
end
#Outro numero


#cond

cond do
  2 + 2 == 5 ->
    "This will not be true"
  2 * 2 == 3 ->
    "Nor this"
  1 + 1 == 2 ->
    "But this will"
end
#But this will

#Caso não atenda todas as possibilidade no cond, gera erro.
#Um pratica é usar uma condicao que sempre sera atendida caso as outras nao sejam
cond do
  7 + 1 == 0 -> "Incorrect"
  true -> "Catch all"
end

cond do
  7 + 1 == 0 -> "Incorrect"
  2 + 2 == 3 -> "Incorrect"
  true -> "No condition satisfied, return default value"
end
#"No condition satisfied, return default value"




#With

user = %{first: "Sean", last: "Callan"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first
#"Callan, Sean"



user = %{first: "doomspork"}
with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last),
     do: last <> ", " <> first
#:error



import Integer
m = %{a: 2, c: 3}
a =
  with {:ok, number} <- Map.fetch(m, :a),
    true <- is_even(number) do
      IO.puts "#{number} divided by 2 is #{div(number, 2)}"
      :even
  else
    :error ->
      IO.puts("We don't have this item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end
  # 2 divided by 2 is 1
  # :even

a =
  with {:ok, number} <- Map.fetch(m, :c),
    true <- is_even(number) do
      IO.puts "#{number} divided by 2 is #{div(number, 2)}"
      :even
  else
    :error ->
      IO.puts("We don't have this item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end
  # It is odd
  # :odd

a =
  with {:ok, number} <- Map.fetch(m, :x),
    true <- is_even(number) do
      IO.puts "#{number} divided by 2 is #{div(number, 2)}"
      :even
  else
    :error ->
      IO.puts("We don't have this item in map")
      :error

    _ ->
      IO.puts("It is odd")
      :odd
  end
# We don't have this item in map
# :error
