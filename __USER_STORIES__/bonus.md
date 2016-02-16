# User Stories: Bonus


## Followings Buttons


**As a user**

**I want to follow other users**

**So I can keep an eye on their playlisting activity**




- there is `Follow` button on every user's SHOW page
- the `Follow` button is not displayed the currently logged in user's SHOW page
- when a user is following another user the button says `Unfollow`


## Followings Listing


**As a user following other users**

**I want to see info about a user's followers**

**So I know just how popular everyone is**




- there is a `Followers` section on the user SHOW page
- the `Followers` section shows a list of users following that user
- the `Followers` section shows a count of how many followers that user has
- each user is displayed with their name as a link to their SHOW page



**As a user being followed by other users**

**I want to see info about who they followed**

**So I can see how social they are**




- there is a `Following` section on the user SHOW page
- the `Following` section shows a list of the users that user is following
- the `Following` section shows a count of how many users that user has followed
- each user is displayed with their name as a link to their SHOW page



**As a currently logged in user**

**I want to be able to edit my followings directly on my page**

**So I don't have to navigate to other user's pages to unfollow them**




- the `Following` section on the current user page has a button next to each user on the list
- the button reads `Unfollow` and when clicked will unfollow that user


## Bookmarked By


**As a user making bookmarks**

**I want to see if another user bookmarked a bookmarkable**

**So I can decide how invested I am in bookmarking it myself**




- on each (Artist, Song, Playlist) bookmarkable's SHOW page:
    - there is a section `Bookmarked By` that displays:
        - the number of users that bookmarked this artist
        - a short list (5 entries) of links to users that bookmarked this artist


## Song Played In Playlists


**As a user viewing a song detail page**

**I want to see a list of playlists that contain this song**

**So I can tell if I'm alone or not when I add it to my own playlist**




- the song SHOW page has a section `Played In` that has:
    - a count of all the playlists the song appears in
    - a short sample list (5 entries) of playlists it appears in with links to those playlists









