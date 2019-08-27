# TastyBot

## Outline
With Tastybot, I aim to expand on the previous group project (Dinnergy) with my own unique touch. One goal is to set the application up so the user can keep track of all their ingredients and once they select and use a recipe this will remove the specified quantity in the ingredients for each item from the same ingredients listed in the current stock. I am currently making the backend layer in Ruby on Rails then I will create the front end in React. Later I want deploy this application to my android phone using React Native.

## Features
- User can sign up

## User Stories

```
MVP
As a person who likes things to be where they need it,
I want to be able to add and edit recipes into an app, 
so that I can access them all in one place when I need to.

As an indicisive person when it comes to meal planning, 
I want to be able to select options in an app such as available ingredients and type of cuisine, 
so that it is easier to decide on a meal.

As a person who likes to keep track of multiple items in their kitchen,
I want to be able to add, edit, and delete ingredients from my current stock,
so that I don't have to go searching my kitchen every time I want decide on a meal.

As person with a last minute meal plan,
I want an app that will provide me recipes based on 100% of the ingredients I currently have in stock,
so that I don't have to go shopping and can save time.

As a person who wants to plan meals with more options available,
I would like an app that will provide me with recipes based on only some of the ingredients I have a available,
so that I will have more options and plan accordingly.

As a person who likes many cuisines,
I would like an app that will allow me to pick a particular a recipe based on type of cuisine,
so that I can narrow down my search based on the type of cusine I want that day.

As a person who likes to plan ahead,
I would to generate a shopping list based on ingredients to make a meal,
so that I know which ingredients to buy.

As a person who wants to plan one meal at a time,
I would like to be able to select one recipe from the list
so that I can see which ingredients I will need.

As a person who wants to keep track of used ingredients,
I would like an app to remove ingredients quantities used in a chosen recipe,
so that my current stock stays up to date each time I make a meal.
```

```
Additional Features

As a time restricted person,
I would like a barcode scanner to scan ingredients into my app,
so that updating my current stock is less time consuming where possible.

As a person who likes to make informed decisions,
I would like an app with an option to show recipes based on how far I am willing to travel to buy additional ingredients,
so that I can make an informed decision about which recipe I can make.

As a person who likes to make informed decisions,
I would like an app with an option to show recipes based on which shops are still open to buy additional ingredients,
so that I can make an informed decision based on ingredients still available to buy.

As a person who wants to plan a weeks worth of meals,
I would like to be able to select more than one recipe from the list
so that I can see which ingredients I will need.

As a person who likes to keep track of my favourite recipes,
I would like an app that can store my favourites,
so that I can view them at a later date. 

As a person who 
keep a history of chosen meals

keep track of vital ingredients and have a pop up to remind me when I've not had a meal containing it in some time

decide whether to eat at home or in a restaurant

```

## Quickstart
### Run application
First, clone this repository. Then:

```bash
> bundle install

* Database creation
> bin/rails db:create
> bin/rails db:migrate

> rails s (to run the application in development mode)
```

### Run tests
`rake`

* Test Database initialization
`bin/rake db:migrate RAILS_ENV=test`

* Ruby version
2.6.0

* System dependencies

* Configuration

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
