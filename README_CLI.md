# Phoenix CLI Commands

## Setup & Dependencies
- `make setup` - Sets up the project (gets deps, sets up the database)
- `make install` - Installs all dependencies (Elixir and Node.js)
- `make deps.get` - Gets Elixir dependencies
- `make deps.update` - Updates all dependencies

## Database
- `make db.reset` - Resets the database
- `make db.migrate` - Runs database migrations
- `make db.setup` - Creates and migrates the database

## Development
- `make server` - Starts the Phoenix server
- `make test` - Runs tests
- `make test.watch` - Runs tests in watch mode

## Code Quality
- `make format` - Formats your code
- `make credo` - Runs static code analysis
- `make sobelow` - Runs security analysis
- `make dialyzer` - Runs dialyzer for type checking

## Maintenance
- `make clean` - Cleans build artifacts
- `make` or `make display-help` - Shows all available commands
