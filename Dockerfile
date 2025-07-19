FROM python:3.12-slim

# 安裝必要系統套件
RUN apt-get update && \
    apt-get install -y build-essential

# 設定工作目錄
WORKDIR /app

# 安裝 Python 套件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 複製所有程式碼
COPY . .

# 執行程式
ENV PYTHONUNBUFFERED=1
CMD ["python", "main.py"]
