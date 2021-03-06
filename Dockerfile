# comment

# какие образом используются для создание контейнера
FROM node:16.14.2

# создание и название рабочую папку
WORKDIR /usr/src/app

# скопировать файл зависимостей в рабочую папку
COPY package*.json ./

# скопировать в рабочую папку весь проект
COPY . .

# запустить код на стороне сервера
# RUN npm install
RUN npm install -g npm@8.7.0
#RUN npm install --g yarn
RUN yarn install

# открыть порт для работы
EXPOSE $PORT

# запустить сервер
#CMD ["npm", "start"]
CMD ["yarn", "start"]