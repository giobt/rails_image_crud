# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

Install RVM
```
sudo apt-get update
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /usr/local/rvm/scripts/rvm
```
Install NodeJS
```
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt install -y nodejs gcc g++ make git libmysqlclient-dev
```
Configure Ruby Gem
```
gem update --system
echo "gem: --no-document" >> ~/.gemrc
```
Install Ruby on Rails
```
gem install rails
```
Clone application code
```
git clone https://github.com/giobt/rails_image_crud.git
```
* Database creation
Run database migrations:
```
bin/rails db:migrate RAILS_ENV=test
```
* Database initialization
```
export DATABASE_MYSQL_USERNAME=root
export DATABASE_MYSQL_PASSWORD=password
export DATABASE_MYSQL_ENDPOINT=test.cccq8uofemew.us-east-1.rds.amazonaws.com
export DATABASE_MYSQL_DATABASE=test
```
* How to run the test suite
```
export DATABASE_MYSQL_PASSWORD=Passw0rd
export S3_BUCKET=url-aws-course
```
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
