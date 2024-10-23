FROM grafana/k6 as k6official
FROM node:22.7-slim

RUN apt-get update
RUN apt-get install -y gnupg wget
RUN npm install -g npm@10.8.3

COPY --from=k6official /usr/bin/k6 /usr/bin/k6
