#!/bin/bash

set -e  # 에러 발생 시 종료

echo "backend/ondam-backend 디렉토리로 이동"
cd backend/ondam-backend

echo "백엔드 Docker 이미지 빌드 (캐시 무시)"
docker build --no-cache -t morris235/ondam-backend:latest .

echo "Docker Hub에 백엔드 이미지 푸시"
docker push morris235/ondam-backend:latest

cd ../..

# echo "백엔드 컨테이너 실행"

# 기존 컨테이너 제거 (있다면)
# docker rm -f ondam-backend || true

# 백엔드 실행 (포트 8080 → 8083)
# docker run -d \
#   --name ondam-backend \
#   -p 8083:8080 \
#   morris235/ondam-backend:latest

# echo "백엔드 실행 완료: http://localhost:8083"
