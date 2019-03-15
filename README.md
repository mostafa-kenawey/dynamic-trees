# README


## dynamic-trees

API for dynamic Trees, fetches trees list from https://random-tree.herokuapp.com/


## Available API Call:

  > ```/trees``` Return current list of cached trees list

  > ```/trees/new``` Fetch and cache a new list of trees from https://random-tree.herokuapp.com/

  > ```/trees/:id``` List tree's childs, it requires a tree id to list it's childs

  > ```/trees/:id/parents``` List tree's parents, it requires a tree id to list it's parents


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


## Production Deploy and Recommendations:

  > copy `config/database.yml` from `config/database.yml.example`

  > Change session cache store to caching server [memcache, redis]


## ToDo:

  > Add API documentation tool

  > Add Authentication to the API

  > Include test coverage

  > Add Gateway URL to config


## recommendations:

  > For the same implementation it's recommended to use a NoSQL database for storing trees in DB

  > Change caching store to be in caching server
