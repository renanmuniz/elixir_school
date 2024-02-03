#all?
#passando uma colecao de strings, verificar se todos tem 4 caracteres
Enum.all?(["joao","jose","maria"], fn(s) -> String.length(s) == 4 end) #false
Enum.all?(["joao","jose","davi"], fn(s) -> String.length(s) == 4 end) #true

#any?
#passando uma colecao de strings, verificar se pelo menos 1 tem 5 caracteres
Enum.any?(["joao","jose","davi"], fn(s) -> String.length(s) == 5 end) #false
Enum.any?(["joao","jose","maria"], fn(s) -> String.length(s) == 5 end) #true

#chunky_every
#Divide a coleção a cada X acumentos
Enum.chunk_every([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 2)
IO.inspect(Enum.chunk_every([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 2)) #[[1, 2], [3, 4], [5, 6], ~c"\a\b", ~c"\t\n", ~c"\v\f", [13, 14]]
inspect(Enum.chunk_every([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 2), charlists: :as_list)
#note que os numeros 7,8,9,10,11 e 12 ficaram estranhos na saida do console,
#abri duvida no forum mas parece que é só a representaçao na tela dele
#se vc fizer o comando: i "\a\b"
#o resutlado será essa explicação:
#Term
#  "\a\b"
#Data type
#  BitString
#Byte size
#  2
#Description
#  This is a string: a UTF-8 encoded binary. It's printed surrounded by
#  "double quotes" because all UTF-8 encoded code points in it are printable.
#Raw representation
#  <<7, 8>>
#Reference modules
#  String, :binary
#Implemented protocols
#  Collectable, IEx.Info, Inspect, List.Chars, String.Chars
inspect(Enum.chunk_every([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 2), charlists: :as_list) #"[[1, 2], [3, 4], [5, 6], [7, 8], [9, 10], [11, 12], [13, 14]]"

#uma solucao é criar um arquivo ".iex.exs" na raiz do projeto e colocar a seguinte config: IEx.configure(inspect: [charlists: :as_list])
#dessa forma a saida já será interpretada dessa forma.


#chunky_by
#Divide a coleção de acordo com a funcao de comparacao passada
#Exemplo, pelo tamanho da string
#Agrupa apenas os que estão na sequencia se forem iguais.
Enum.chunk_by(["joao","jose","maria","davi","pedro","tiago"], fn(x) -> String.length(x)end) #[["joao", "jose"], ["maria"], ["davi"], ["pedro", "tiago"]]

#map_every
#Aplica a funcao a cada X acumentos
Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 2, fn x -> x * 10 end) #[10, 2, 30, 4, 50, 6, 70, 8]


#each
#Itera sobre a colecao porem sem produzir um novo acumento
Enum.each(["one", "two", "three"], fn(s) -> IO.puts(s) end)
#one
#two
#three
#:ok

#map
#aplica a funcao para cada acumento da colecao
Enum.map([0,1,2,3,4,5,6,7,8,9], fn(x) -> x + 10 end) #[10, 11, 12, 13, 14, 15, 16, 17, 18, 19]


#min
#Encontra o valor minimo da colecao
Enum.min([7,2,9,10,-1,5,6]) #-1

#max
#Encontra o valor maximo da colecao
Enum.max([7,2,9,10,-1,5,6]) #10

#se colecao estiver vazia retorna a funcao definida
Enum.max([], fn -> "vazio" end) #vazio

Enum.max([], fn -> IO.puts("Colecao vazia!") end)
#Colecao vazia!
#:ok


#Filter
#Filtra a colecao de acordo com a funcao passada
#Retornando pares:
Enum.filter([1,2,3,4,5,6,7,8,9,10], fn(x) -> rem(x,2) == 0 end) #[2, 4, 6, 8, 10]


#Reduce
#Reduz a colecao a um unico valor aplicando a funcao e acumulando,
#se nenhum valor for passado no acumulador, o primeiro valor da colecao sera utilizado
Enum.reduce([1,2,3],10, fn(x, acum) -> x + acum end) #16 = 10 + 1 + 2 + 3
Enum.reduce([1,2,3], fn(x, acum) -> x + acum end) #6 = 1 + 2 + 3


#Sort
#Ordenacao de valores da colecao
Enum.sort([5, 6, 1, 3, -1, 4], :asc) #[-1, 1, 3, 4, 5, 6]
Enum.sort([5, 6, 1, 3, -1, 4], :desc) #[6, 5, 4, 3, 1, -1]



#uniq
#remove valores duplicados da colecao
Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1, 1]) #[1, 2, 3]
Enum.uniq(["joao","jose","joao","maria"]) #["joao", "jose", "maria"]


#uniq_by
#remove valores duplicados mas nós que criamos a comparacao
Enum.uniq_by(["joao","jose","maria"], fn x -> String.length(x) == 4 end) #["joao", "maria"] removeu toda string que possuia 4 caracteres apos achar a primeira
