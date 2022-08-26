# README

## About

- The main learning outcome of this project is to work with Active Record associations and create model relationships that make sense.

- The task is to create a site similar to a private Eventbrite which allows users to create events and then mange user signups.

- The project can be found on The Odin Project: https://www.theodinproject.com/lessons/ruby-on-rails-private-events

## Data models

- user can create events
- user can attend many events
- an event can be attended by many users
- events can take place at a specific date and at a location

### Data model setup

- User Model has two types: `host` and `attendee`
  - `host has_many events`
  - `attendee belong_to event`

- Event Model
  - `has_many attendees`
  - `belongs_to host`
<!-- 
### Updated relationship model tables

- User table
  - `...`

- Event table
  - `...`
  - `creator_id`
  - `attendee_id` -->


### Things that helped

- dealing with adding `first_name` and `last_name` fields to Devise Sign Up:
  - https://stackoverflow.com/questions/35668465/devise-unpermitted-parameters
  - https://stackoverflow.com/questions/31660216/rails-devise-wont-write-first-name-and-last-name-to-my-dbs-user-table-and-keep
  - https://github.com/heartcombo/devise#strong-parameters
  