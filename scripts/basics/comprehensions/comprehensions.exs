#List comprehensions are syntactic sugar for looping through enumerables in Elixir

#Forma mais facil de iterar sobre listas


list = [1,2,3,4,5]
for x <- list, do: IO.puts(x)
# 1
# 2
# 3
# 4
# 5
# [:ok, :ok, :ok, :ok, :ok]

for x <- list, do: x*2
# [2, 4, 6, 8, 10]

#Usnado keyword lists
kw_list = [one: 1, two: 2, three: 3]
for {_key, val} <- kw_list, do: val * 10
# [10, 20, 30]


#maps
for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v}
# [{"a", "A"}, {"b", "B"}]

#Como usa pattern matching, se não reconhecer o valor, ele é ignorado:
for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val
# ["Hello", "World"]



#FILTERS
import Integer
for x <- 1..10, is_even(x), do: x
# [2, 4, 6, 8, 10]

for x <- 1..10, is_odd(x), do: x
# [1, 3, 5, 7, 9]

#mais de um filtro:
import Integer
for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x #filtrar os pares e multiplos de 3
# [6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, 78, 84, 90, 96]


