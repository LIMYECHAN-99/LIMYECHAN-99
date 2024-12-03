# Python 3.9 이미지를 사용
FROM python:3.9-slim

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일을 컨테이너에 복사
COPY requirements.txt .

# 필요한 파이썬 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY . .

# Flask 애플리케이션 실행
CMD ["python", "app.py"]