#Basic Operations

defmodule BasicOperations do
  #arithmetics
  def soma do
    IO.puts(1 + 1) #2
  end

  def subtracao do
    IO.puts(10 - 1) #9
  end

  def multiplicacao do
    IO.puts(2 * 5) #10
  end

  def divisao do
    IO.puts(10 / 5) #2
  end

  def metodo_divisao_default do
    IO.puts(div(10,2)) #5
  end

  def metodo_resto_default do
    IO.puts(rem(10,3)) #1
  end

  #booleans
  def bool_and do
    maior_que_zero_e_par(10)
    maior_que_zero_e_par(9)
  end

  def maior_que_zero_e_par(n) do
    if rem(n,2) == 0 && n > 0 do
      IO.puts("par E maior que zero")
    else
      IO.puts("Menor que zero ou impar")
    end
  end

  def bool_or do
    maior_que_zero_ou_par(10)
    maior_que_zero_ou_par(9)
    maior_que_zero_ou_par(-1)
    maior_que_zero_ou_par(-2)
  end

  def maior_que_zero_ou_par(n) do
    if rem(n,2) == 0 || n > 0 do
      IO.puts("par OU maior que zero")
    else
      IO.puts("Menor que zero ou impar")
    end
  end

  def bool_and2 do
    IO.puts(true && true) #true
    IO.puts(true && false) #false
    IO.puts(false && false) #false
  end

  def bool_or2 do
    IO.puts(true || true) #true
    IO.puts(true || false) #true
    IO.puts(false || false) #false
  end

  def not_operator do
    IO.puts(!true) #false
    IO.puts(!false) #true
  end


  #comparacao
  def comparacao do
    IO.puts(2 == 2) #true
    IO.puts(2 != 3) #true
    IO.puts(2 > 10) #false
    IO.puts(2 <= 2) #true
    IO.puts(2 === 2) #true
    IO.puts(2 === 2.0) #false
    IO.puts(2 !== 2.0) #true
    IO.puts(2 !== 2) #false
  end



end

#arithmetics
IO.puts("arithmetics")
BasicOperations.soma()
BasicOperations.subtracao()
BasicOperations.multiplicacao()
BasicOperations.divisao()
BasicOperations.metodo_divisao_default()
BasicOperations.metodo_resto_default()
#booleans
IO.puts("booleans")
BasicOperations.bool_and()
BasicOperations.bool_or()
BasicOperations.bool_and2()
BasicOperations.bool_or2()
BasicOperations.not_operator()
#comparacao
IO.puts("comparacao")
BasicOperations.comparacao()
