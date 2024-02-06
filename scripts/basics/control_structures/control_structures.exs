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
