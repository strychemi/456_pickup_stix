# User Stories: Playlists

## Playlists


**As a user looking for a playlist**

**I want to see a list of playlists**

**So I can browse through them**




- there is a list of the playlists for a user on that user's SHOW page
- each entry on the playlist index is a link to that playlist's SHOW page
- there is a link to create a new playlist


## Playlist Show


**As a user with a playlist**

**I want to view the playlist in detail**

**So I can see all the songs in the playlist**




- the playlist SHOW page has a list of the songs in the playlist
- each entry in the song list has
    - a link to it's artist's SHOW page
    - a link to remove the song from the playlist
- there is a button `Bookmark` that
    - if not already bookmarked, when clicked will add this artist to the current user's bookmarks
    - if already bookmarked it should say `Unbookmark` and allow the user to remove the bookmark


## Playlist New


**As a user who wants to make a playlist**

**I want a page that allows me to create a playlist**

**So I can have a brand new shiny playlist to add songs to**




- there is a form for creating a new playlist
- the form allows the user to submit a name for the playlist
- upon successful submission the form redirects to the playlist SHOW page
- if the submission fails, the form renders again


## Playlist Edit


**As a user who wants to edit a playlist name**

**I want a page that allows me to edit a playlist name**

**So I can update the name to be more appropriate**




- there is a form for editing a playlist name
- the form allows the user to submit a name for the playlist
- upon successful submission the form redirects to the playlist SHOW page
- if the submission fails, the form renders again

