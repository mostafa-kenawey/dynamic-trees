# README


## dynamic-trees

API for dynamic Trees, fetches trees list from https://random-tree.herokuapp.com/


## Available API Call:

  > ```/trees``` Return current list of cached trees list

  > ```/trees/new``` Fetch and cache a new list of trees


## Project Details:

* Environment

  > API Rails Project

  > Ruby 2.6.1

  > Rails 5.2.2

  > PostgreSQL


* Configuration

  > copy `config/database.yml` from `config/database.yml.example`

* Database creation

  > run `bundle exec rake db:create`

  > run `bundle exec rake db:migrate`

  > run `bundle exec rake db:seed`


## Production Deploy:

  > copy `config/database.yml` from `config/database.yml.example`


## ToDo:

  > Remove the default rails landing page

  > Add API documentation tool

  > Add Authentication to the API

  > Include test coverage

  > Add Gateway URL to config


## recommendations:

  > For the same implementation it's recommended to use a NoSQL database for storing trees in DB

  > Change caching store to be in caching server
