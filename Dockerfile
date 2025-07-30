FROM n8nio/n8n

USER root
RUN npm install -g n8n-nodes-base
USER node

ENV GENERIC_TIMEZONE=Asia/Kolkata

COPY workflow.json /home/node/.n8n/workflows.json
