<h1><b>Have this in mind when you clone this project</b></h1>

Access to this project  database uses an encrypted pasword, If this is your first time uing rails with postgresql, first configure postgress database then go database.yml file change your host to "localhost" and the passwod set by you.

VERY IMPORTANT: before uploading to any public repository make sure the access is encrypted, rails alllows you to edit your credentials and create a master key with command
EDITOR=vim rails credentials:edit (DO NOT PUSH THE MASTER KEY FILE TO THE REPOSITORY) Heroku ha tutorials of how include your master key on your porject, so add this file to the .gitignore list.

# ruby-getting-started

A barebones Rails app, which can easily be deployed to Heroku.

This application supports the [Getting Started on Heroku with Ruby](https://devcenter.heroku.com/articles/getting-started-with-ruby) article - check it out.

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) (formerly known as the Heroku Toolbelt).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ bundle exec rake db:create db:migrate
$ heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku main
$ heroku run rake db:migrate
$ heroku open
```

or

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Docker

The app can be run and tested using the [Heroku Docker CLI plugin](https://devcenter.heroku.com/articles/local-development-with-docker-compose).

Make sure the plugin is installed:

    heroku plugins:install heroku-docker

Configure Docker and Docker Compose:

    heroku docker:init

And run the app locally:

    docker-compose up web

The app will now be available on the Docker daemon IP on port 8080.

To work with the local database and do migrations, you can open a shell:

    docker-compose run shell
    bundle exec rake db:migrate

You can also use Docker to release to Heroku:

    heroku create
    heroku docker:release
    heroku open

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
