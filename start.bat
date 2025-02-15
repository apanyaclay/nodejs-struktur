@echo off
mkdir public\uploads
mkdir src\config
mkdir src\controllers
mkdir src\middlewares
mkdir src\models
mkdir src\routes
mkdir src\services
mkdir src\utils
type nul > src\app.js
type nul > .env
type nul > Dockerfile
type nul > server.js
echo Project structure created successfully!
