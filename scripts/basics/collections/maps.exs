#maps
# In Elixir, maps are the “go-to” key-value store. Unlike keyword lists, they allow keys of any type and are un-ordered.
# You can define a map with the %{} syntax


#Executar esses comando no terminal interativo(iex) porque por script não está funcionando direito.

map = %{:nome => "joao", :idade => 18}
map[:nome] #"joao"
map[:idade] #18

#se houver atribuicoes duplicadas o valor da chave é sobrescrito
map = %{:nome => "joao", :idade => 18, :idade => 20}
map[:nome] #"joao"
map[:idade] #20
