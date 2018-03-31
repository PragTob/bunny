list = Enum.to_list(1..10_000)
map_fun = fn(i) -> [i, i * i] end

[time: 3]
|> Bunny.init
|> Bunny.system
|> Bunny.benchmark("flat_map", fn -> Enum.flat_map(list, map_fun) end)
|> Bunny.benchmark("map.flatten",
                     fn -> list |> Enum.map(map_fun) |> List.flatten end)
|> Bunny.measure
|> Bunny.statistics
|> Bunny.Formatters.Console.output
