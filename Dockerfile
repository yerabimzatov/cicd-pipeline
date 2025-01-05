FROM node:14-alpine
WORKDIR /opt
COPY . /opt
RUN npm install --production && rm -rf /opt/.npm  # Install only production dependencies and clean npm cache
ENTRYPOINT ["npm", "run", "start"]
