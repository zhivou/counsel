# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


npx nx generate @nrwl/react:library admin
npx nx generate @nrwl/workspace:remove --projectName=admin

Storybook generator
npx nx g @nrwl/storybook:configuration admin

Use following to regenerate elements
nx g @nrwl/react:stories --project=<project-name>

Generate component
nx g component my-component --project=mylib