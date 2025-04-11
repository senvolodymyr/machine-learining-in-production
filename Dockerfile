FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

ADD ./machine_learning/ /app/
ADD ./pyproject.toml /app/
ADD ./uv.lock /app/

WORKDIR /app

RUN uv sync --frozen

CMD ["uv", "run", "main.py"]
