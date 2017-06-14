Commands

-  Run this to createt the app
rails new resumeapp

- Run the following command to start the rails server

rails server

- Run this to generate a scoffold and specify attibutes and datatype for the model
rails generate scaffold Resume name:string email:string phone:string city:string state:string zip:integer summary:text

- Run this to execute a database migration (migrations are created automatically when the above command is executed)
rake db:migrate

- Run this command to see all the routes available
rake routes

- Run this command to view all rake commands
rake -T

- To delete a scaffold do the following
rails destroy scaffold Resume

- Had an incorrect field in the model
1. Had to run rails destroy scaffold Resume

2. Re-run rails generate scaffold Resume name:string email:string phone:string city:string state:string zip:integer summary:text

3. rake db:migrate - There should be a better wayhttps://github.com/denisdbell/rails_pluralsight



