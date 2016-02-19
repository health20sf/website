
## Overview

This is a Ruby on Rails app, which is deployed on Heroku via <https://www.health2sf.com/>. The app is the main website for the Health 2.0 organization (San Francisco chapter).

## Configuration

Ruby 2.2.4, Rails 4.2.4, Sqlite3 for dev, Postgres for production, and WEBrick server. 

## Usage

  1. $ bundle install
  2. You should create and migrate databases if this is freshly cloned
  3. $ rails s
  4. Open up localhost:3000

## Testing

Run bundle exec rake test to run the test suite.

## Contributing

Fork repo, clone locally, create a branch, and create your feature/bug fix/etc. Commit early, commit often. Write tests.
Make your tests pass as well as the existing suite. Push your branch (NOT MASTER!) to Github. Submit a pull request with a description of your code. Once it is peer-reviewed, it will be merged by the peer-reviewer. Keep your fork updated before, during, and after your merge.

## Deployment

Once the PR is merged, the admin will deploy to Heroku.
