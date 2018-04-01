# Bunny [![Hex Version](https://img.shields.io/hexpm/v/bunny.svg)](https://hex.pm/packages/benchee) [![docs](https://img.shields.io/badge/docs-hexpm-blue.svg)](https://hexdocs.pm/benchee/) [![Inline docs](http://inch-ci.org/github/PragTob/benchee.svg)](http://inch-ci.org/github/PragTob/benchee) [![Build Status](https://travis-ci.org/PragTob/benchee.svg?branch=master)](https://travis-ci.org/PragTob/benchee) [![Coverage Status](https://coveralls.io/repos/github/PragTob/benchee/badge.svg?branch=master)](https://coveralls.io/github/PragTob/benchee?branch=master)

The bunnytastic benchmarking library formerly known as benchee.

## Installation

Get the bunny life into your elixir:

```elixir
def deps do
  [
    {:bunny, ">= 0.1.0"}
  ]
end
```

## Usage

For now most of the documentation is still over at [benchee](https://github.com/PragTob/benchee) but everything works! All the options are implemented, it's just as fast and versatile as before.

However, it exposes a better and more expressive API for your pleasure. You know, bunny can't only run like the good old benchee. No! **Bunny can also sleep, hop, eat and jump!**

This all comes with your own personal bunny assistant that helps you benchmark:

```elixir
list = Enum.to_list(1..10_000)
map_fun = fn(i) -> [i, i * i] end

Bunny.eat(%{
  "flat_map"    => fn -> Enum.flat_map(list, map_fun) end,
  "map.flatten" => fn -> list |> Enum.map(map_fun) |> List.flatten end
})
```

```
tobi@speedy ~/github/bunny $ mix run samples/eat.exs 
Bunny will take care of that for you!

   ( Y)
  ( . .)
 o(") (")

Operating System: Linux
CPU Information: Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz
Number of Available Cores: 8
Available memory: 15.61 GB
Elixir 1.6.3
Erlang 20.2
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
parallel: 1
inputs: none specified
Estimated total run time: 14 s


Benchmarking flat_map...
Benchmarking map.flatten...

Name                  ips        average  deviation         median         99th %
flat_map           2.23 K      448.25 μs    ±14.33%         430 μs         790 μs
map.flatten        1.17 K      857.84 μs    ±21.57%         796 μs     1426.98 μs

Comparison: 
flat_map           2.23 K
map.flatten        1.17 K - 1.91x slower

Bunny is done!

 () ()
 (* *)
o( 0 )
```

