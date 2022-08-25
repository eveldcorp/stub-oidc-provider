FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 9000

ENV DEBUG oidc-provider* 

ENV PORT=9000
ENV ISSUER=http://localhost:9000
ENV STUB_CLIENT_ID="stubclientid"
ENV STUB_CLIENT_SECRET="stubclientsecret"
ENV CALLBACK_URL="https://jwt.io"

CMD ["node", "index.js"]