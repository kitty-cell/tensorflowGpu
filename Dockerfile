# 基于python的基础镜像
FROM tensorflow/tensorflow:2.16.2-gpu
# 工作目录
WORKDIR /app
# 复制所有应用程序文件到工作目录
COPY . .

#安装依赖
RUN pip install --no-cache-dir --default-timeout=100 -i https://mirrors.aliyun.com/pypi/simple/ -r requirements.txt



