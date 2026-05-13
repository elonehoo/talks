FROM node:22-alpine AS builder

RUN corepack enable && corepack prepare pnpm@latest --activate

WORKDIR /app

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY 2023-03-18/src/package.json ./2023-03-18/src/
COPY 2023-10-06/src/package.json ./2023-10-06/src/
COPY 2024-11-22/src/package.json ./2024-11-22/src/
COPY 2026-05-12/src/package.json ./2026-05-12/src/

RUN --mount=type=cache,id=pnpm,target=/root/.pnpm-store \
    pnpm install --frozen-lockfile

COPY . .

RUN pnpm build

FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
