#Pipe Operator
#Passa o resultado da funcao como primeiro parametro para a proxima
#vantagem: ligibilidade

defmodule SemPipe do
  def soma(n1,n2) do
    n1 + n2
  end

  def subtracao(n1,n2) do
    n1 - n2
  end

  def multiplicacao(n1,n2) do
    n1 * n2
  end

  def divisao(n1,n2) do
    n1 / n2
  end

  def tudo(n1,n2) do
    divisao(multiplicacao(subtracao(soma(n1,n2), n2), n2),n2)
  end
end

defmodule ComPipe do
  def soma(n1,n2) do
    n1 + n2
  end

  def subtracao(n1,n2) do
    n1 - n2
  end

  def multiplicacao(n1,n2) do
    n1 * n2
  end

  def divisao(n1,n2) do
    n1 / n2
  end

  def tudo(n1,n2) do
    soma(n1,n2) |> subtracao(n2) |> multiplicacao(n2) |> divisao(n2)
  end

  def inspecionando(n1,n2) do
    tudo(n1,n2) |> IO.inspect()
  end

end
