FROM python:3.10-slim

FROM alpine:latest
RUN this_command_does_not_exist  # Ошибка: команда не существует

COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends build-essential

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["python", "/src/main.py"]
