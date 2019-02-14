# Vince's Ubuntu Phoenix Build Env

This is meant to be a base image for building Phoenix applications. This will provide:

- Erlang 21
- Elixir 1.8
- NodeJS 10
- Yarn

You should copy in your project and run

```bash
mix local.rebar --force
mix local.hex --force
```

before installing your dependencies.
