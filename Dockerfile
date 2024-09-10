# 基于python的基础镜像
FROM tensorflow/tensorflow:2.16.2-gpu
# 工作目录
WORKDIR /app
# 复制所有应用程序文件到工作目录
COPY . .

#安装依赖
RUN pip install --no-cache-dir --default-timeout=100 -r requirements.txt
# 清理未使用的缓存和临时文件
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# # 第一阶段：构建和安装依赖
# FROM tensorflow/tensorflow:2.16.2-gpu AS builder

# # 工作目录
# WORKDIR /app

# # 复制应用程序文件到工作目录
# COPY . .

# # 安装依赖
# RUN pip install --no-cache-dir --default-timeout=100 -r requirements.txt

# # 第二阶段：构建最终镜像
# FROM tensorflow/tensorflow:2.16.2-gpu

# # 工作目录
# WORKDIR /app

# # 复制应用程序文件到工作目录
# COPY --from=builder /app /app

