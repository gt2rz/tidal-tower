
FROM node:lts-alpine AS base
WORKDIR /app
COPY . .

ENV PORT=4321
ENV HOST=0.0.0.0

RUN npm install

EXPOSE 4321
CMD ["npm", "run", "dev"]