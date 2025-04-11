FROM python:3.12-slim-bookworm
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

COPY /machine_learning /machine_learning
WORKDIR /machine_learning

RUN uv sync --frozen

CMD ["uv", "run", "main.py"]
