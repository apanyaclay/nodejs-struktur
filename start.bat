@echo off
mkdir public\uploads
mkdir src\app\controllers
mkdir src\app\middlewares
mkdir src\app\routes
mkdir src\app\services
mkdir src\app\utils
mkdir src\db\config
mkdir src\db\models
mkdir src\db\migrations
mkdir src\db\seeders

:: Membuat file kosong
type nul > src\index.js
type nul > .env
type nul > Dockerfile
type nul > server.js

:: Inisialisasi Node.js project
echo Menginisialisasi proyek Node.js...
git init
npm init -y

:: Menginstal Sequelize dan Sequelize-CLI
echo Menginstal Sequelize dan Sequelize-CLI...
npm install sequelize express bcryptjs cors dotenv jsonwebtoken nodemailer
npm install sequelize-cli nodemon --save-dev

:: Inisialisasi Sequelize
echo Menginisialisasi Sequelize...
npx sequelize-cli init

echo Proyek berhasil dibuat dan Sequelize berhasil diinisialisasi!
pause
