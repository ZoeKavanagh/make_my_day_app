# Make My Day

Make My Day is a group web application for organising days out. The app is supposed to act as a solution for friends who can never decide on days when they are all free. With this web application, users can create a group together, interact with a calendar and speak via a posts section in order to decide on a date, location, budget, and type of activity. They can then fill out a form with this information, and the application does the rest! Make My Day makes a request to our Clint API, which uses the information given to filter through its database, and return only relevant events for the group to do!

This has been a collaborative project worked on by four developers.

### Contributors

- Salome Lambermont
- Sam Worrall
- Zoe Kavanagh
- Robert Fishwick


### Tech

- Ruby on Rails
- HTML
- CSS
- ReactJS
- PostgreSQL
- RSpec-Rails
- Capybara
- OAuth
- FactoryBot
- AWS3


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

### Approach


### Organisation

We organised our workflow using Trello, splitting all tasks into manageable tickets. We worked in pairs every day, deciding what needed to be done in daily morning standups, and we would review our progress, as well as our thoughts and concerns during afternoon retrospectives.

Our Trello Board:

<a href="https://trello.com/b/rIRgpIkZ/make-my-day"><img src="logos/Trello.png" height="60" width="160"></a>


### Instructions

To run this application locally,
Clone this repository
```
git clone git@github.com:ZoeKavanagh/make_my_day_app.git
```

Run rspec to make sure the tests are passing
```
$ rspec
```

Open the app in your browser
```
localhost:3000
```
