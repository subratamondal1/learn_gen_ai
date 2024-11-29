install:
	# Install Package Installer for Python
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	# Lint Code with Ruff using pyproject.toml
	ruff check . --fix --config pyproject.toml

format:
	# Format Code with Ruff Formatter using pyproject.toml
	ruff format . --config pyproject.toml

test:
	# Test Code

build:
	# Build Docker Image
	docker build -t learn_gen_ai:latest .
	
run:
	# Run Docker Container
	docker run -e OPENAI_API_KEY=your_openai_key -e GROQ_API_KEY=your_groq_key -p 8000:8000 learn_gen_ai:latest
	
deploy:
	# Azure Deployment Setup with Docker

fastapi:
	poetry run uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload