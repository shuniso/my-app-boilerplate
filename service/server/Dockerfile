FROM python:3.11-slim

WORKDIR /app

# Poetry or pip 対応可
COPY pyproject.toml poetry.lock ./
RUN pip install --upgrade pip && pip install poetry && poetry install --no-root

COPY . .

ENV PORT=8080
EXPOSE 8080

CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]