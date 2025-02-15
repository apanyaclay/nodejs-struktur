npx sequelize-cli db:create
npx sequelize-cli model:generate --name User --attributes name:string,email:string,password:string
npx sequelize-cli db:migrate
