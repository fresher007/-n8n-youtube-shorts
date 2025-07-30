FROM node:18-alpine
WORKDIR /usr/src/app

ENV GENERIC_TIMEZONE=Asia/Kolkata

# Install n8n globally
RUN npm install -g n8n

# Optional: Add workflows (only if needed)
COPY workflow.json /home/node/.n8n/workflows.json

EXPOSE 5678

CMD ["n8n"]
