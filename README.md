# README - Meu Catarsinho
![GitHub top language](https://img.shields.io/github/languages/top/diegoshakan/catarsinho)
![GitHub language count](https://img.shields.io/github/languages/count/diegoshakan/catarsinho)
![GitHub repo size](https://img.shields.io/github/repo-size/diegoshakan/catarsinho)

Click here to visit: [Catarsinho](https://meu-catarsinho.herokuapp.com/)
<p>This Web App is a little app based on Catarse.</p>

![Tela Inicial](/app/assets/images/index.png)

## Pre-requisites

* Ruby '2.7.1'
* Rails 6.0.3
* Bundler 2.1.4
* Docker and Docker-Compose
* Postgresql 10.10

## Setup Project

* $ git clone https://github.com/diegoshakan/catarsinho.git
* $ cd catarsinho
* $ sudo docker-compose build --no-cache
* $ sudo docker-compose up -d
* $ sudo docker-compose exec app bash
* $ rails db:create db:migrate (if you want two sample users , please run too db:seed)
* $ bundle install
* if your sistem ask for Yarn, please type $ yarn install or just $ yarn
* After all, run $ rails s -b 0.0.0.0

## Web App
* You can register an user and submit a project;
* You can see all projects of another users and show more about it;
* In a project, you can do a donation to any projects;
* When you be logged, your have a place to see just your projects;
* In main view, you can looking for another projects. Enjoy!

furhter informations:
I used bootstrap by webpacker setting to make style of system.

## Tests and Development librarys (gems)
GEMS
* Simple-form
* Devise
* Ransack
* Pry
* Rspec-rails
* Factory_bot_rails
* FFaker

