# SUSE 12 Elixir

## About

I built this to package elixir apps for production to deploy on SUSE 12 servers.

## Building

```bash
docker build . -t suse12-elixir
```

## Using

```bash
docker run -it -e 'MIX_ENV=prod' --rm -v "/your/elixir/app:/code" mjquinlan2000/suse12-elixir:latest mix release --env=prod
```

Alternatively, to get an iex shell, you can run:


```bash
docker run -it --rm mjquinlan2000/suse12-elixir:latest
```
