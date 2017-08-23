# Alpha Kappa Psi Website
Website built for UC Berkeley's Alpha Kappa Psi Chapter. Found at [www.calakpsi.com](http://www.calakpsi.com/)

## Contributors
Michael Deng
Jason Xie
Erik Yang

## Structural Background
* This project is written with Ruby on Rails.
* The production version of this website is hosted on [Heroku](https://www.heroku.com/).
* It uses Heroku for a postgresql database.
* (I think) It uses AWS S3 for storing rushee and active images.
* Admin users can use [calakpsi.com/admin](http://www.calakpsi.com/admin) to login and use [ActiveAdmin](https://github.com/activeadmin/activeadmin) to create, update, and delete pretty much anything on the database.

## Development Setup
__Assumptions__
* Heroku and Git are installed on your system
    * You have edit access rights to this repository
* Ruby and Rails are installed on your system (Versions specified in Gemfile)

__Setup and Running Locally__
* `bundle install --without production` - this installs all gems (packages) required for this app
* `rake db:migrate` - this creates all the necessary database tables for the app
* `rails server` - runs a local server
* Go to `localhost:3000` - see the website

## Deployment Guide
* `git add -A` - add all your files to be tracked by Git
* `git commit -m "your commit message"` - commit those changes
* `git push heroku master` - push (upload) your changes to Heroku
    * Your console should display a lot of messages. If it succeeds, all changes will be visible on [www.calakpsi.com](http://www.calakpsi.com/)

## About this README
This README was created by Erik Yang to ensure future generations wouldn't have to struggle to understand the codebase like he did.