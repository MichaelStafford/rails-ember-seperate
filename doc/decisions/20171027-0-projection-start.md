# Project Start
It was determined to create this app as an semi-integrated ember.js / rails api. The reasons behind this are as follows.

- Reason 1
- Reason 2
- Reason 3

## API Choices
In order to set this project up we needed to add the following dependecies.

- 'ember-cli-rails': Integration gem between the ember app and the rails api
- 'rubocop-rails': Code quality      
- 'active_model_serializers': Consistent JSON api for use with the ember.js app and integration with RMS3
- 'database_cleaner': Cleans out the database during testing
- 'factory_bot_rails': Creation of models to use during testing
- 'faker': Fake data for use during seeding / testing
- 'capybarra': Acceptance tests capable of exercising the full stack ember -> rails
- 'selenium-webdriver': Needed for capybarra

## UI Choices

##Linting
Ember: Has JsLint built in
Rails: Rubocop with rails integration