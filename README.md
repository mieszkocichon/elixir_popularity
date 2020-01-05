# ElixirPopularity

**TODO: Add description**
## Tutorial by https://akoutmos.com/post/broadway-rabbitmq-and-the-rise-of-elixir/

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_popularity` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_popularity, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_popularity](https://hexdocs.pm/elixir_popularity).

## Run

### Docker
```docker
docker-compose up
```

### Create table
```bash
mix ecto.create 
```
```bash
mix ecto.migrate
```

### iex
```bash
iex -S mix
```