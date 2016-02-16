# User Stories: Artists

## Artists Index

**As a user**

**I want to be able to browse a index of all artists**

**So I can see what artists are available**



- an index of all of the artists in the database exists at `/artists`
- each artist name is shown in the index as a link
- each artist name has the number of songs the artist has next to it
- the link take's the user to that artist's SHOW page

## Artist Show

**As a user**

**I want to view a specific artist**

**So I can see the songs for just that artist**



- an artist has a SHOW page that corresponds with the route `/artists/:id`
- the SHOW page displays the name of the artist
- the SHOW page displays a list of all of that artist's songs
- **when the user is logged in:**
    - each song:
        - has a dropdown list next to it with all of the current user's playlists
        - has a button `Add to playlist` next to it that will add that song to the selected playlist when clicked
        - **NOTE: you are not to take into account whether or not the song may already exist in the playlist!**
        - has a link to that song's SHOW page
    - there is a button `Bookmark` that
        - if not already bookmarked, when clicked will add this artist to the current user's bookmarks
        - if already bookmarked it should say `Unbookmark` and allow the user to remove the bookmark

