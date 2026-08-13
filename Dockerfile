FROM node:22-slim

RUN npm install -g opencode-ai@1.18.18

COPY opencode.json /root/.config/opencode/opencode.json
COPY entrypoint.sh /entrypoint.sh
COPY skills/ /root/.config/opencode/skills/

RUN chmod +x /entrypoint.sh

EXPOSE 4096

ENTRYPOINT ["/entrypoint.sh"]
