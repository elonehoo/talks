FROM node:22-alpine AS builder
LABEL "language"="nodejs"
LABEL "framework"="slidev"

WORKDIR /app

RUN apk add --no-cache git

RUN git config --global user.email "builder@zeabur.local" && \
    git config --global user.name "Builder"

RUN corepack enable && corepack prepare pnpm@latest --activate

COPY . .

RUN git init && git add . && git commit -m "init" --allow-empty

RUN pnpm install --force

RUN pnpm build

FROM nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
