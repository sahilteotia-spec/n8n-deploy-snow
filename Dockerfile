FROM n8nio/n8n:1.28.0

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

ENV N8N_HOST=n8n-deploy-snow-production-67bd.up.railway.app
ENV N8N_PROTOCOL=https
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-deploy-snow-production-67bd.up.railway.app
ENV N8N_EDITOR_BASE_URL=https://n8n-deploy-snow-production-67bd.up.railway.app

EXPOSE 5678