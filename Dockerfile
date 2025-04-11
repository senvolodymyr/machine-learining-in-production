FROM python:3.12-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY /machine_learning /app
COPY /pyproject.toml /app
COPY /uv.lock /app

WORKDIR /machine_learning

RUN uv sync --frozen

CMD ["uv", "run", "main.py"]
