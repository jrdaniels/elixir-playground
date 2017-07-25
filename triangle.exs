defmodule Triangle do
  def triangle_area(base, height) do
    0.5 * base * height
  end

end

for i <- 1..20 do
  base = Enum.random(1..15)
  height = Enum.random(1..10)
  IO.puts "Base: #{base}, Height: #{height}, Area: #{Triangle.triangle_area(base, height)}"
end
