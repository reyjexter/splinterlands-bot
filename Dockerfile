FROM node:12.22
MAINTAINER Rey Bumalay <reyjexter@gmail.com>

RUN apt-get update
RUN apt-get install -y software-properties-common python3-software-properties \
    ca-certificates fonts-liberation libappindicator3-1 \
    libasound2 libatk-bridge2.0-0 libatk1.0-0 \
    libc6 libcairo2 libcups2 libdbus-1-3 \
    libexpat1 libfontconfig1 libgbm1 libgcc1 \
    libglib2.0-0 libgtk-3-0 libnspr4 \
    libnss3 libpango-1.0-0 libpangocairo-1.0-0 \
    libstdc++6 libx11-6 libx11-xcb1 \
    libxcb1 libxcomposite1 libxcursor1 \
    libxdamage1 libxext6 libxfixes3 \
    libxi6 libxrandr2 libxrender1 \
    libxss1 libxtst6 lsb-release wget xdg-utils

COPY package.json /

RUN npm install

COPY . /app
WORKDIR /app

EXPOSE 80
CMD ["npm", "start"]

