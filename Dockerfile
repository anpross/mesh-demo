FROM node:14

WORKDIR /app

RUN npm install -g @nrwl/cli
RUN npm install -g @angular/cli
RUN npm install -g concurrently

COPY package.json package-lock.json nx.json ./

RUN npm install --ignore-scripts

ENV API_PORT=3333
ENV PORT=80
EXPOSE 80

# dependencies that nestjs needs
COPY ./ ./

CMD concurrently --kill-others "nx serve api" "nx serve ts-starter --host 0.0.0.0"