FROM node:10.7

WORKDIR /usr/app
COPY ./app .

RUN npm install
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000

ENTRYPOINT ["npm", "run", "start"]