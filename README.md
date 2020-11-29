# Roda-GraphQL

## Instructions

- `./cli.rb server` to run the server
- `./cli.rb help` to see what other options are available.

## Rack/Puma

1. Run `rackup` or `puma`.
2. Rack searches for a `config.ru` or may be passed a configuration
   file.
3. The Rack configuration should contain a `run` method, which accepts Rack
   application.
4. A Rack application is an Instance (not a Class) which has a `#call` method
   that accept an environment. This is called every time a request is received.

## Roda

1. Roda has a base class with class methods of `::route` and `::app`. The
   route method sets a singleton variable with the supplied block. The app
   method returns a lambda that calls new on itself and passes the block
   supplied in the route method, to a `#call` method.
2. Roda's base calls also has an `#initialize` method and a `#call` method.
   Initialize stores the Rack environment passed in by when `run` is called
   by Rack. The call method is called by Rack's run method.
3. Roda is designed to require a derived class which calls `::route` in its
   body. The block is stored in the Roda singleton class. This is executed
   as soon as the class is parsed by Ruby.

## Application

`config.ru` -> `application.rb` -> `app/application.rb`
