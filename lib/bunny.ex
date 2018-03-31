defmodule Bunny do
  defdelegate run(jobs, config), to: Benchee
  defdelegate hop(jobs, config), to: Benchee, as: :run
  defdelegate eat(jobs, config), to: Benchee, as: :run
  defdelegate jump(jobs, config), to: Benchee, as: :run

  defdelegate init(),                           to: Benchee
  defdelegate init(config),                     to: Benchee
  defdelegate system(suite),                    to: Benchee
  defdelegate measure(suite),                   to: Benchee
  defdelegate measure(suite, printer),          to: Benchee
  defdelegate benchmark(suite, name, function), to: Benchee
  defdelegate statistics(suite),                to: Benchee
  defdelegate load(suite),                      to: Benchee
  defdelegate benchmark(suite, name, function, printer), to: Benchee
end

defmodule Bunny.Formatters.Console do
  defdelegate format(suite), to: Benchee.Formatters.Console
  defdelegate output(suite), to: Benchee.Formatters.Console
  defdelegate write(any),    to: Benchee.Formatters.Console
end
