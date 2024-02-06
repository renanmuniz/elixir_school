#Pattern matching is a powerful part of Elixir. It allows us to match simple values, data structures, and even functions.

#match operator =

x = 1 #1
x #1

# iex(1)> x = 1
# 1
# iex(2)> x
# 1

list = [1, 2, 3]


{:ok, value} = {:ok, "Successful!"}
# iex(8)> {:ok, value} = {:ok, "Successful!"}
# {:ok, "Successful!"}
# iex(9)> value
# "Successful!"
