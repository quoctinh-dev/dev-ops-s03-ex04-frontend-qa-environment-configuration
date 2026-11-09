#!/bin/bash
# Kịch bản cấu hình môi trường và kiểm tra biến môi trường trong container frontend QA

# Khởi chạy container nginx với biến môi trường API_ENDPOINT
docker run -d --name rikkei-frontend-qa -e API_ENDPOINT=https://qa-api.rikkei.edu.vn nginx

echo "Đang khởi chạy container và kiểm tra danh sách..."
docker ps

echo "Tiến hành thực thi lệnh docker exec để in biến môi trường bên trong container:"
docker exec -it rikkei-frontend-qa sh -c "echo \$API_ENDPOINT"