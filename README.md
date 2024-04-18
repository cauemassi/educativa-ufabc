# README

### Requerimentos

- Ruby 3.3.0
- Postgres 10

#### Setup

- Instalar Postgres
  ```shell
    $ sudo apt install postgresql postgresql-contrib
    $ sudo -i -u postgres
    $
    $ psql
    $ create role educativa_db with createdb login password 'educativa_db';
    $ \q
    $ exit
    $
    $ sudo apt-get install libpq-dev
- Instalar Ruby
  ```shell
    $ gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    $ sudo apt-add-repository -y ppa:rael-gc/rvm
    $ sudo apt-get install rvm
    $ echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc
    $ rvm install 3.3.0
    $ rvm use 3.3.0 --default
  ```
- Instalar Bundler
  ```shell
    gem bundle install
  ```
- Executar bundle install
  ```bash
    bundle install
  ```
- Executar setup do banco de dados
  ```bash
    rails db:setup
  ```
- Iniciar o servidor e sidekiq
  ```bash
    rails s
    sidekiq
  ```
