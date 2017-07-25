defmodule Link1 do
  import :timer, only: [ sleep: 1]

  def sad_function do
    sleep 500
    exit(:boom)
  end

  def run do
    #Process.flag(:trap_exit, true)
    res = spawn_monitor(Link1, :sad_function, [])
    IO.puts inspect res
    receive do
      msg -> IO.puts "Message Received: #{inspect msg}"
    after 1000 ->
      IO.puts "Nothing happened as far as I am concerned"
    end
  end

end
Link1.run
