defmodule Collatz do
  def of(1),
   do: IO.puts "Solved"

  def of(a)
   when rem(a,2) == 1,
    do: of(3 * a + 1)

  def of(a),
   do: of(div(a, 2))
end
