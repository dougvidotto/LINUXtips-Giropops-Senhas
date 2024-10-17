FROM python:3.13.0-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
ENV REDIS_HOST=container_redis
CMD ["flask", "run", "--host=0.0.0.0"]
