# 使用官方 Node.js 镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制依赖定义文件
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目源码
COPY . .

# 默认启动命令（会被 docker-compose 覆盖）
CMD ["npm", "run", "dev"]
