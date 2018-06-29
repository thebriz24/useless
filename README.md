# Useless
[![Hex Version](https://img.shields.io/hexpm/v/useless.svg "Hex Version")](https://hex.pm/packages/use_less)

Application that doesn't do anything except start up a supervisor with no children. For the purpose of having an app that a testing runtime can start and stop with no consequences.

## Installation

```elixir
def deps do
  [
    {:useless, "~> 0.1.0"}
  ]
end
```

## Usage
   
Run it with `Application.ensure_all_started/2`. Or not. It don't do nuthin'.
