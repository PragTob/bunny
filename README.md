# Bunny [![Hex Version](https://img.shields.io/hexpm/v/bunny.svg)](https://hex.pm/packages/benchee) [![docs](https://img.shields.io/badge/docs-hexpm-blue.svg)](https://hexdocs.pm/benchee/) [![Inline docs](http://inch-ci.org/github/PragTob/benchee.svg)](http://inch-ci.org/github/PragTob/benchee) [![Build Status](https://travis-ci.org/PragTob/benchee.svg?branch=master)](https://travis-ci.org/PragTob/benchee) [![Coverage Status](https://coveralls.io/repos/github/PragTob/benchee/badge.svg?branch=master)](https://coveralls.io/github/PragTob/benchee?branch=master)

The bunnytastic benchmarking library formerly known as benchee. After all, benchmarking a function is just like a bunny eatings its input!

![omnomnom function inputs](https://lh3.googleusercontent.com/NruIvmKXw92sN1h9un0VBquQIsHs21r1q12lPaPHu5HvOm7lrZ0Kw-91yav4mUgK-ET8-N92ygcD3sdmD3beDX_K4Cm73l4uEEcVorn7GwpN4O6JwOQ5fXSCKiqfWV2kN73mWI8DnF9k2hcjs9_QCHkGb_ThFFYHHxZkgbRbjVv_LTEYw6lSyXLYeNG5IpORc75M0iLsuvtWX9oBYRQh7aQkVFkbqfkRUzVqi6dHwDtU-VE4o6TLI_iOxsW1L-KKqfKnFWDLm2ed0Ujg1JKVYZYA_1WuJB1yrRXlLd2tN8Xm-Jkkb0tofzK8wExF6Bj_SQKuQg7wANIhx4szNfUBORAHGo-wzEmxw1r_5fVZ--QH7nKpejFBWPyEdwtsGX80X0H784cBgQAInoEl6Yc3PsaQKklmi4VW5rt3Yh6og9jg9Og0BG9qGk3puCTC6mn5iz1nHHQkOlPk8CbgvJjcSdGwhfeHJy2A79xYWt1q1AhT8lze4Mstt9CkyyGb3NHh0CDrlVBwESTaTGyKA0ifM7aVmvd7b3aj3TOx8Q9CkN4s6UTY_sD-ukJTxF1QFzjZBZO2mKOkMivjfKCgOd9vsHQq777n6dJQfx2VNaz-KN1BdG2sXFhxzk-1FrP3sLPeVWv5ki8nqAopQAvKOefAEWvdaexAfGQ-=w808-h606-no)

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
