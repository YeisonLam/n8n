FROM n8nio/n8n:latest

WORKDIR /home/node/

COPY . .

EXPOSE 5678

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

VOLUME ["/home/node/.n8n"]

CMD ["n8n", "start"]
