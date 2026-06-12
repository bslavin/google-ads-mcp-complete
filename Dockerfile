FROM python:3.12-slim

WORKDIR /app

COPY pyproject.toml .
COPY src/ src/
COPY run_server.py .

RUN pip install --no-cache-dir -e .

ENTRYPOINT ["python", "run_server.py"]
