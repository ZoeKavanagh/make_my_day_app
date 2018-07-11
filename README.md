# Make My Day

Make My Day is a group web application for organising days out. The app is supposed to act as a solution for friends who can never decide on days when they are all free. With this web application, users can create a group together, interact with a calendar and speak via a posts section in order to decide on a date, location, budget, and type of activity. They can then fill out a form with this information, and the application does the rest! Make My Day makes a request to our Clint API, which uses the information given to filter through its database, and return only relevant events for the group to do!

This has been a collaborative project worked on by four developers.

### Contributors

- [Salomé Lambermont](https://github.com/Slambermont)
- [Sam Worrall](https://github.com/samworrall)
- [Zoe Kavanagh](https://github.com/ZoeKavanagh)
- [Robert Fishwick](https://github.com/afishcalledrob)


### Tech

| Tech | Testing |
|---|---|
| Ruby-on-rails, Ruby, PostgreSQL, HTML, CSS, ReactJS, Simplecov, Rubocop, AWS3, OAuth | RSpec-rails, Capybara, Factory_bot_rails |



### User Stories

```
As a User,
So that I can specify when I am free,
I would like to be able to enter a date
```

```
As a User,
So that I can only see events in the area I will be,
I would like to be able to specify a location
```

```
As a User,
So that I can specify a how much I want to spend,
I would like to be able to select from a price range
```

```
As a User,
So that I only see events related to what I want to do,
I would like to be able to specify a category
```

```
As a User,
So I can plan my day,
I want to see a list of activities available on my specified date, in my specified location, within my specified price range, relating to my specified category
```

```
As a User,
So that I can formulate a group day,
I would like to create a group
```

```
As a User,
So that others can be a part of my group,
I would like to be able to add other users to the group
```

```
As a User,
So that myself and my group can keep track of when we are all free,
I would like the group page to have a communal interactive calendar
```

```
As a User,
So that myself and my group can communicate on the site,
I would like the group page to have a messaging section
```

### Functionality

A user can fill out a make my day form from the home page without logging in if they want to. A user can log in with their google account to create groups with other existing users. When creating a group, the user must give the group a name, and select the other users they want to add to the group. Once a group is created, the users share a group page, where they can chat to each other, use an interactive calendar, and fill out a make my day form.

Upon completion of a make my day form, a request is sent to our [Clint API](https://github.com/afishcalledrob/clint_api), which takes the data given by the users, and returns a list of events that meets their requirements.

For the purposes of this project, we created our own API and therefore seeded its database with data we had researched ourselves. As a result, the API will only respond to requests for the month of July 2018.



### Organisation

We organised our workflow using Trello, splitting all tasks into manageable tickets. We worked in pairs every day, deciding what needed to be done in daily morning standups, and we would review our progress, as well as our thoughts and concerns during afternoon retrospectives.

Our Trello Board:

<a href="https://trello.com/b/rIRgpIkZ/make-my-day"><img src="logos/Trello.png" height="60" width="160"></a>

### Finished Project

See the live Heroku application in action by clicking the image below. Make sure to log in with google to check out all of the functionality!:

<a href="https://polar-beach-63507.herokuapp.com/"><img src="logos/Heroku.png" height="110" width="100"></a>


### Run the application locally

To run this application locally,
Clone this repository
```
$ git clone $ git@github.com:ZoeKavanagh/make_my_day_app.git
```

Install gem dependencies
```
$ bundle install
```

Set up the database
```
$ bin/rails db:create
$ bin/rails db:migrate
```

Run RSpec to make sure the tests are passing
```
$ bundle exec rspec
```

Run the server
```
$ bin/rails server
```

Open the app in your browser
```
localhost:3000
```
