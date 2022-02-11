defmodule Guess do
  use Application

  def start(_, _) do
    run()
    {:ok, self()}
  end

  def run() do
    IO.puts("Let's play Guess the number")

    IO.gets("Pick a difficult level (1, 2 or 3): ")
    |> Integer.parse()
    |> parse_input()
    |> IO.inspect()
  end

  def parse_input(:error) do
    IO.puts("Invalid level!")
    run()
  end

  def parse_input({num, _}), do: num
end
