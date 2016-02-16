# User Stories: Users

## User Index


**As a user searching for other users**

**I want to see a list of all the user's in the site**

**So I can browse through them**




- a users INDEX page exists at `/users`
- each entry in the list:
    - goes to that user's SHOW page
    - has a `Playlist Count` next to it displaying the number of playlists that user has


## User Show


**As a user**

**I want a detailed profile view of any user**

**So I can see specific info about that user**




- a user has a SHOW page at `/users/:id`
- the show page contains:
    - a section for that user's playlists **(see playlists.md)**
    - a section for that user's bookmarks **(see bookmarks.md)**
    - a button to the EDIT page for that user
    - a button to DELETE the user entirely
- the EDIT and DELETE buttons are only visible on the currently logged in user's SHOW page


## User Edit


**As a user**

**I want to edit my info**

**So I can change info when it needs to be updated**




- an EDIT page exists for the current user
- it allows the user to edit:
    - their first and last name
    - their email
    - their password
- upon successful submission the the EDIT form redirects to the SHOW page for that user
- if validation fails the form is rendered again with error messages


## User Delete


**As a user that is misguided about life**

**I want to be able to delete my account**

**So I can not have as much fun as other user's making playlists**




- a DELETE button exists that when clicked will delete the user entirely

