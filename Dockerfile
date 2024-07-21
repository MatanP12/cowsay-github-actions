FROM node:alpine3.20

WORKDIR /app

COPY ./src/package.json .
RUN npm install

COPY src/public ./public
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

COPY src/index.js .

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "8080" ]