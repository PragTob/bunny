defmodule Bunny do
  @moduledoc """
  The bunnytastic way to benchmarking.
  """

  def run(jobs, config \\ []) do
    IO.puts("""
    Bunny will take care of that for you!

       ( Y)
      ( . .)
     o(") (")
    """)

    Benchee.run(jobs, config)

    IO.puts("""

    Bunny is done!

     () ()
     (* *)
    o( 0 )
    """)
  end

  defdelegate hop(jobs, config \\ []), to: __MODULE__, as: :run
  defdelegate eat(jobs, config \\ []), to: __MODULE__, as: :run
  defdelegate jump(jobs, config \\ []), to: __MODULE__, as: :run
  defdelegate sleep(jobs, config \\ []), to: __MODULE__, as: :run

  defdelegate init(), to: Benchee
  defdelegate init(config), to: Benchee
  defdelegate system(suite), to: Benchee
  defdelegate collect(suite), to: Benchee
  defdelegate benchmark(suite, name, function), to: Benchee
  defdelegate statistics(suite), to: Benchee
  defdelegate relative_statistics(suite), to: Benchee
  defdelegate load(suite), to: Benchee
end

defmodule Bunny.Formatter do
  defdelegate output(suite), to: Benchee.Formatter
  defdelegate output(suite, formatter, arguments), to: Benchee.Formatter
end

defmodule Bunny.Formatters.Console do
  defdelegate format(suite, opts), to: Benchee.Formatters.Console
  defdelegate write(any, opts), to: Benchee.Formatters.Console
end
