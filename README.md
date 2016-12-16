# SUSE 12 Elixir

## About

I built this to package elixir apps for production to deploy on SUSE 12 servers.

## Building

```bash
docker build . -t suse12-elixir
```

## Using

```bash
docker run -it -e 'MIX_ENV=prod' --rm -v "/your/elixir/app:/code" suse12-elixir:1.3.4 mix release --env=prod
```
