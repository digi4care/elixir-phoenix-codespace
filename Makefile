# Phoenix Makefile
# Common commands for Phoenix development

.PHONY: setup server install deps.get deps.update db.reset db.migrate test test.watch format credo sobelow dialyzer

# Setup
setup: deps.get db.setup

# Install dependencies
install:
	mix deps.get --force
	cd assets && npm install

# Get dependencies
deps.get:
	mix deps.get

# Update dependencies
deps.update:
	mix deps.update --all

# Database
# Reset and setup database
db.reset:
	mix ecto.reset

# Run migrations
db.migrate:
	mix ecto.migrate

# Create and migrate database
db.setup:
	mix ecto.setup

# Start Phoenix server
server:
	mix phx.server

# Run tests
test:
	mix test

# Run tests with watch mode
test.watch:
	mix test.watch

# Format code
format:
	mix format

# Run static code analysis (Credo)
credo:
	mix credo --strict

# Run security analysis (Sobelow)
sobelow:
	mix sobelow

# Run dialyzer
dialyzer:
	mix dialyzer

# Clean build artifacts
clean:
	rm -rf _build
	rm -rf deps
	rm -rf assets/node_modules

# Help
display-help: ## Display this help screen
	@echo "Phoenix Project Makefile"
	@echo "\nAvailable commands:"
	@echo "  setup           - Setup the project (get deps, setup db)"
	@echo "  server          - Start Phoenix server"
	@echo "  install         - Install all dependencies"
	@echo "  deps.get        - Get Elixir dependencies"
	@echo "  deps.update     - Update all dependencies"
	@echo "  db.reset        - Reset the database"
	@echo "  db.migrate      - Run database migrations"
	@echo "  db.setup        - Create and migrate database"
	@echo "  test            - Run tests"
	@echo "  test.watch      - Run tests in watch mode"
	@echo "  format          - Format code"
	@echo "  credo           - Run static code analysis"
	@echo "  sobelow         - Run security analysis"
	@echo "  dialyzer        - Run dialyzer"
	@echo "  clean           - Clean build artifacts"

# Default target
default: display-help
