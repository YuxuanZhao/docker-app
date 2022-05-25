# 安装node和node所依赖的alpine，指定版本，其实每一个container还会依赖别的container，层叠关系
FROM node:13-alpine

# 设定参数
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app

# 将host的app文件夹里的所有文件复制到/home/app里面
COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR，linux脚本语句
RUN npm install

# no need for /home/app/server.js because of WORKDIR, 程序入口
CMD ["node", "server.js"]

