#lists

#Executar esses comando no terminal interativo(iex) porque por script não está funcionando direito.

#listas em elixir são linkedlists, então percorre-la tem uma performance não tão boa o(n).
#portanto é preferível ao inserir elementos, inserir antes e não ao final.


lista = [1, 2, 3.14, "teste",'a','b','c']
IO.inspect(lista)  #comando inspect le e retorna o conteudo do elemento inspecionado

lista_add_antes = [1, 2, 3.14, "teste",'a','b','c']
[0 | lista_add_antes] #[0, 1, 2, 3.14, "teste", ~c"a", ~c"b", ~c"c"]
IO.inspect(lista_add_antes) #[1, 2, 3.14, "teste", ~c"a", ~c"b", ~c"c"]  como é imutavel, não sobrescreveu a lista anterior

lista_nova = [0 | lista_add_antes]
IO.inspect(lista_nova) #[0, 1, 2, 3.14, "teste", ~c"a", ~c"b", ~c"c"]

lista = [1, 2, 3.14, "teste",'a','b','c']
lista_add_depois = lista ++ [10,11,12] #[1, 2, 3.14, "teste", ~c"a", ~c"b", ~c"c", 10, 11, 12]

#subtraindo listas
lista = [1,2,3,4,5]
lista_sub = lista -- [3,4]  #[1, 2, 5]

#para subtrair, leve em consideracao valores duplicados:
lista = [1,2,2,3,3,3]
lista_sub = lista -- [1,2,3,3]  #[2,3]

#head e tail
#head retorna o primeiro elemento
lista = [1,2,3,4,5,6]
hd(lista) #1

lista = [1,2,3,4,5,6]
tl(lista) #[2, 3, 4, 5, 6]


