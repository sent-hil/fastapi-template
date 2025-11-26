FROM python:3.12-slim-trixie

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc

COPY pyproject.toml uv.lock .

RUN pip install uv
RUN uv sync --frozen

COPY . .

EXPOSE 9100

CMD ["uv", "run", "uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "9100"]
