FROM python:3.11

RUN pip install fastapi httpx pytest uvicorn pydantic pydantic-settings

WORKDIR /app

COPY src ./src

ENTRYPOINT ["python", "-m", "src.main"]
