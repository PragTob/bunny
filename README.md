# Bunny [![Hex Version](https://img.shields.io/hexpm/v/bunny.svg)](https://hex.pm/packages/benchee) [![docs](https://img.shields.io/badge/docs-hexpm-blue.svg)](https://hexdocs.pm/benchee/) [![Inline docs](http://inch-ci.org/github/PragTob/benchee.svg)](http://inch-ci.org/github/PragTob/benchee) [![Build Status](https://travis-ci.org/PragTob/benchee.svg?branch=master)](https://travis-ci.org/PragTob/benchee) [![Coverage Status](https://coveralls.io/repos/github/PragTob/benchee/badge.svg?branch=master)](https://coveralls.io/github/PragTob/benchee?branch=master)

The bunnytastic benchmarking library formerly known as benchee. After all, benchmarking a function is just like a bunny eatings its input!

![omnomnom function inputs](https://lh3.googleusercontent.com/7Z2UBCfOjulrMLByoeoz4Emx4nRJckZ_2QAb6Bl_meZUAuhLi9iL60S9lWOlLNe24W_-Zhe9GJP6Zkeyn_NoCa4g82W_HcEGQlN7qop4SYvr-3N-ivdc-sMLemub2Zn9F9qPpkzRgolk_M8-_umZHqgNvizC093ocbFpTEHz2o6Gz_wGukgagU2ZCNbWFmzrwcvkiUwoxzy4fMTMMtsz9dVAAGRHrAVNZgQk-y00bOpe-sqwymF9A2bbA4dq5ZaW6o9xLAA5Yib-YYNqN-8c47jG_3HXOeZE-L-z82vJXnjoIII4KxKKHT4-KtWSPEWEhFGwUwxZx4p65OYvzap46R5ousxoiA5_9tZA5Uis9mNnYewMsMzNMXOXWOjRiTFY9nIBYcmtLIBUMRdAhnMyriALKP5dNT6Kozg-b45AGP282rUuQZEpyGOgaUbL-z6clz8MlLt_n8_MVpNNHxzjaTALz3Emb3znJkQdI76KmExPlLYuUhlPkxzlwTF34Boc2bdBdqSx21V1X2bqDwh6oZzD7aoYjFPbRbzbe7lF4C33MryNfUSuypFLM-mro8XcTAoUygfRXsJxhc2U_c92a2qRM7qFTVJ9aF31-sai_OTPgOiGK7w0Smc0SjlHIK3MMgRy1IpcS0oSjv74i-BKaD0A9AuxfgMC=w1017-h763-no)

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

After all this hard work, bunny needs to rest a bit:

![sleepy bunny is best bunny](https://lh3.googleusercontent.com/EaJ5k2J87wFLKcpZzsNfWu5vLCS9PdxAdMqK3BqDHdJimxP7L_tlmZvF3EoKTBY45YlrUeMjvs3xlkZ8NmJaUFznB8TOEOmYycz106X1LzOyXh2TiKldkoR3k1fs0sbMwxx30hbTz3V-Leayr3UmYY06jrhBbCDf7t0Rz2dwJ5FWi0xuc7skW1i8koYF5yiG_JUEtecIo7VBV8cG_nlhcmr2uyPR6dGRtUWC6RA9LumBhsODXQMmb2kR7iYexHEn_Z3Di2yo0OdzsvSniFpF1_4LvJlOksKDK6oL1sKOumuMVjkw2obdAAHpfi23msoz901p6DxZ1p6zMIZu9dIQrQMyNe4FMkGtHA5UHhDPJKwRSx1C0SyZFlIHmlRCexj0CFVdY95pfb8bkGVGz2W6WgciqkJ2lHu3VaPFAe7su88bdbf3IvLkEQJ0bkUjlyDVlFrvsSO4iMgGUMHKt2xmvGwr6KKGA8J9sWCOoQqTPf8aT7OJjdwct9rHn3daB6heXt57W8UEq0ttQ3iZVtNa4DPMLaAIK3sbw3NrCTUrde1Yhr0FKIo224qNmWQb5ZSLQXchUbZBqJNdsBNoNOkLIPg9Vh8KYZ4i3gBzSEarQ6NP4aKKGaEA1WqMMvV40Z8lp7lpeFJmf_vGqWY9tNE57W0pyBX4P68c=w972-h730-no)
