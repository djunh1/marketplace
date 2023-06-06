# Welcome to the Marketplace!

# Application Information

Please verify the gemfile for exact versions.  As of 6-June 2023 we are running:

- ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [x86_64-darwin20]
- Rails 7.0.5
- postgres (PostgreSQL) 14.6 (Homebrew)  (see Section 2 for the setup)

# To run in development -

To run the application with CSS auto reloading, run the following command.

1. ./bin/dev


# Section 2.  The Database

This section assumes a MacOS(Big Sur or above), and homebrew

1. Using homebrew install postgres as follows:
brew install postgresql@14

2. Start the postgres server locally:
brew services start postgresql@14  (brew services restart postgresql if you can not connect)

3. To set up a database, log into the DB and run some scripts to create a ROLE, and a DATABASE:

 a. CREATE ROLE <my_role_name> WITH LOGIN PASSWORD '<db_password>';
 b. CREATE DATABASE <my_db_name>;
 c. GRANT ALL PRIVILEGES ON DATABASE <my_db_name> TO <my_role_name>;

4. Create the Database

bundle exec rake db:create

5. Perform the migrations

rails db:migrate

# Section 3.  Ruby and Ruby Version manager

We are using rbenv 1.2.0 (macOS), to get setup:

1. brew intall rbenv

(note we are using rbenv 1.2.0)

2. rbenv install -l

This will provide a list to select from.  Install anything that is at or above ruby 3.1 - see below for example:

2.6.10
2.7.6
3.0.4
3.1.2
jruby-9.3.8.0
etc...

3. Run the following with a ruby version above to set the ruby version to use

rbenv install 3.1.2
rbenv local 3.1.2
rbenv global 3.1.2
rbenv rehash

