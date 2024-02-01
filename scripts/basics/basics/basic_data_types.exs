#Basic data Types

defmodule BasicDataTypes do
  def inteiro do
    IO.puts(255)
  end

  def binario do
    IO.puts(0b1011) #11
  end

  def octal do
    IO.puts(0o644) #420
  end

  def hexadecimal do
    IO.puts(0x1F) #31
  end

  def ponto_flutuante do
    IO.puts(3.141516)
    IO.puts(0.14)
    # IO.puts(.14) erro de sintaxe, precisa ter um numero na frente do ponto
  end

  def boleano do
    IO.puts(true)
    IO.puts(false)
  end


  def atoms do
    #atom é uma constante, definida como uma :keyword
    :credito
    :debito
    IO.puts(:credito)
    IO.puts(:debito)
    IO.puts(:true === :false)
    atoms_in_conditions(:credito)
    atoms_in_conditions(:debito)
  end

  def atoms_in_conditions(at) do
    if at === :credito do
      IO.puts("pagamento no crédito")
    end
    if at === :debito do
      IO.puts("pagamento no débito")
    end
  end


  def strings do
    IO.puts("Isso é uma string")
    IO.puts("Concatenando " <> "strings" <> "!")
    IO.puts("Formatando\nstrings\n\tem Elixir!")
    name = "Renan"
    IO.puts("Olá, #{name}") #Olá, Renan
  end
end

#Executando as funções:
BasicDataTypes.inteiro()
BasicDataTypes.binario()
BasicDataTypes.octal()
BasicDataTypes.hexadecimal()
BasicDataTypes.ponto_flutuante()
BasicDataTypes.boleano()
BasicDataTypes.atoms()
BasicDataTypes.strings()
