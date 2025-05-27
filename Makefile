rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	cargo fmt --quiet

lint:
	cargo clippy --quiet

test:
	cargo test --quiet

run:
	cargo run

release:
	cargo build --release

all: format lint test run

help: 
	@echo "Available commands:"
	@echo "  make rust-version  - Show Rust tool versions"
	@echo "  make format        - Format the code"
	@echo "  make lint          - Lint the code"
	@echo "  make test          - Run tests"
	@echo "  make run           - Run the application"
	@echo "  make release       - Build the application in release mode"
	@echo "  make all           - Run format, lint, test, and run"
	@echo "  make help          - Show this help message"
