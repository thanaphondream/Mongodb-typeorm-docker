FROM node:18

# ตั้ง working directory
WORKDIR /app

# คัดลอก package.json และ package-lock.json
COPY ./package.json ./

# ติดตั้ง dependencies
RUN npm install

# ติดตั้ง nodemon สำหรับการพัฒนา
RUN npm install -g nodemon

RUN npm install -g ts-node

# คัดลอก source code ทั้งหมด
COPY . .


# เปิดพอร์ตที่คอนเทนเนอร์จะฟัง
EXPOSE 3000

# รันโปรเจกต์ด้วย ts-node และ nodemon
CMD ["npm", "run", "dev"]