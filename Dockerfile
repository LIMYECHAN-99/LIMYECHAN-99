# 사용하고자 하는 Python 이미지
FROM python:3.9-slim

# 애플리케이션 디렉터리 생성
WORKDIR /app

# 요구사항 파일을 컨테이너에 복사
COPY requirements.txt /app/

# 필수 라이브러리 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY . /app/

# Flask 애플리케이션 포트 열기
EXPOSE 8080

# 애플리케이션 실행
CMD ["python", "app.py"]
