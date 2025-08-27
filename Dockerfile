# 컨테이너 공통 실행 포트: 8080 (Cloud Run/App Runner 기본과 잘 맞음)
FROM python:3.11-slim
WORKDIR /helloworld
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["python", "hello.py"]