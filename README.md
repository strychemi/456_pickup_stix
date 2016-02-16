# Advanced Rails Assessment




Fork and clone this repo! Create a pull request when you're done.




## 1. Google Form Q+As

Answer the questions on this [Google Form](https://docs.google.com/forms/d/1XVf9Z9LMsKKtb--iackS1w9Ilpw8Er60j5246Kgg0XE/viewform).





## 2. Playlister

Playlister is an app that allows it's users to create and share song playlists.

**MVP features include:**

- auth login and logout
- user CRUD
- playlist CRUD
- bookmarking/unbookmarking various pages (resources)
- user signup

**Bonus features include:**

- following/unfollowing other users
- tracking stats about artists and songs





### Setup
Go to the `playlister` directory and set this app up:

```shell
$ bundle install
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

Run guard/rspec to see the tests.
**Only worry about BONUS specs after all others are green!**

```shell
$ bundle exec guard
```

```shell
$ bundle exec rspec
```


### Your Mission


Complete the user stories in the `__USER_STORIES__` directory.
Each `markdown` file contains categorized user stories.
**The bonus stories are only to be done after all others are finished!**

# User Stories


[Artists](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/artists.md)

[Auth](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/auth.md)

[Bookmarks](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/bookmarks.md)

[Errors](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/errors.md)

[Flash](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/flash.md)

[Nav](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/nav.md)

[Playlists](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/playlists.md)

[Songs](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/songs.md)

[Users](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/users.md)



## BONUS Stories! (only after you're done everything else!)

[BONUS](https://github.com/vikingeducation/assessments/blob/master/advanced_rails_assessment/assessment/__USER_STORIES__/bonus.md)

**NOTE: while seeds and migrations have been provided for you,
you will have to make your own associations!**



# Schema and Models

Below is an outline of associations that will make this app work.

**NOTE: all of the extra info Rails needs like `:class_name` and `:source`
has been removed. You'll need to add that yourself!**

## Artists
    - attributes:
        - name
    - associations:
        - `has_many :songs`
        - `has_many :bookmarks`

## Bookmarks
    - associations:
        - `belongs_to :user`
        - `belongs_to :bookmarkable`

## PlaylistSelections
    - associations:
        - `belongs_to :playlist`
        - `belongs_to :song`

## Playlists
    - attributes:
        - name
    - associations:
        - `belongs_to :user`
        - `has_many :bookmarks`
        - `has_many :playlist_selections`
        - `has_many :songs`

## Songs
    - attributes:
        - name
    - associations:
        - `belongs_to :artist`
        - `has_many :bookmarks`
        - `has_many :playlist_selections`
        - `has_many :playlists`

## Users
    - attributes:
        - first_name
        - last_name
        - email
        - auth_token
        - password_digest
    - associations:
        - `has_many :bookmarks`
        - `has_many :playlists`


# BONUS Associations

## Followings
    - associations:
        - `belongs_to :follower`
        - `belongs_to :followed`

## Users
    - associations:
        - `has_many :initiated_followings`
        - `has_many :received_followings`
        - `has_many :followers`
        - `has_many :followeds`




# Auth


In order to enable Rails auth capabilities, you will need to add a migration to alter the user table.

**Once that migration is in place, don't forget to update your `seeds.rb` file to include user passwords!**


You'll have to create functionality in your `ApplicationController` and
`User` model that:
  
- make the `ApplicationController` specs pass
- use secure password encryption to store your users' passwords in the database
- allow users to login and logout




# Controllers and Views

- many of the specs test if a view is being rendered, use this along with the stories as a guide for what views to create
- many of the specs also send data to specific routes, use this to determine the expected routing structure
    - **HINT: nested routes are NOT necessary for this app**
    - **HINT: use `current_user` where ever possible to improve security and simplicity**




# Specs

Specs will tell you if your models are setup correctly.

Specs will also tell you if your controllers and routes work as expected.

**Specs do not include integration tests. You will need to manually test the forms and features of your app!**


# No Styling!

Bootstrap has been included for you in your application layout.
This is just to provide barebones styling that YOU don't have to worry about.

**DO NOT style anything or work on appearance unless you've finished all the user stories and made all specs pass!**

# Good Luck!












