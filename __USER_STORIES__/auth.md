# User Stories: Auth


## Login


**As a signed out user**

**I want to be able to login**

**So I can use this awesome app**




- there is a login form at `/login`
- the user logs in with their email and password
- when the user credentials are correct the user is redirected to their SHOW page
- when the user credentials are incorrect the user is redirected to the login form


## Logout


**As a signed in user**

**I want to be able to logout**

**So I can be signed in only when I want **




- there is an omnipresent `Logout` button at the top of every page when the user is signed in
- when clicked, the `Logout` button results in the user being signed out
- upon signing out, the user is redirected to the `Login` form


## Authentication


**As a signed in user**

**I want my signed in status to persist until I logout**

**So I can remained logged in until I choose to logout**




- there is functionality in place to persist the user login using cookies or sessions


## Authorization


**As a logged in user**

**I want operations I perform to be secure**

**So I can feel secure when I perform them **




- editing, updating and destroying a user require the user to be logged in
- adding or removing a song from a playlist requires the user to be logged in
- adding or removing a bookmark requires the user to be logged in
- operations use the `current_user` where appropriate instead of a ID to increase security



**As a logged out user**

**I want to not be able to perform actions or see data only a logged in user should**

**So I can know when I am a member my information is secure**




- editing, updating and destroying **ANY** user is not possible when logged out
- adding or removing a song from **ANY** playlist is not possible when logged out
- adding or removing a bookmark is not possible when logged out
- all of the forms that perform these actions are hidden when logged out



**As a logged out user**

**I still want to see certain pages**

**So I can tell if I'm interested enough to join**



- artists
    - INDEX
    - SHOW
- playlists
    - SHOW
- songs
    - SHOW
- users
    - INDEX
    - SHOW


## Signup


**As a user without an account**

**I want to be able to sign up**

**So I can create an account**




- a signup form exists at the root path
- the signup form allows the user to submit all of the necessary attributes to create an account
- upon successful submission the user is signed in and redirected to their SHOW page
- when unsuccessful the form renders again with errors
- when logged in the sign up form is hidden



