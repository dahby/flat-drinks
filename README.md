# Flat-Drinks

## Setup

Before you begin, fork and clone this repo, run `rake db:migrate` and `rake db:seed` to get started.

## The Domain

We're creating a new application which will allow users to keep track of the different drinks they consume (alcoholic or not) and their opinions of those drinks at the time.  

Luckily, another developer has already started the job. We have model for users, drinks,  and a model for the makers of those drinks. Visiting `'/users'` displays all of the users, visiting `'/drinks'` displays all created drinks, and visiting `'/makers'` displays all of the makers of those drinks. What we are missing are the associations between these different models, as well as the views beyond the index pages.

## Model Associations

To start, we will need to associate our makers model to our drinks model. Makers can make many different beverages, while drinks will only have one maker. We want to create this association, along with a view that will allow us to create new drinks.

We also have to consider the relationship between users and drinks. We want users to be able to log that they have consumed many drinks, and drinks can be drank(?) by many users. When the logs are created, we also want to provide the functionality for a user to make notes about their drinks.

We will not be worrying about logging in or creating new users for the purpose of this application.