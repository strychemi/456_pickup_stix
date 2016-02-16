# User Stories: Songs

## Song Show


**As a user**

**I want to see a detail page about a song**

**So I can see more info about it**




- a song SHOW page exists at `/songs/:id`
- the page has a link to the artist's SHOW page
- has a form with:
    - a dropdown list with all of the current user's playlists
    - a button `Add to playlist` that will add that song to the selected playlist when clicked
    - **NOTE: you are not to take into account whether or not the song may already exist in the playlist!**
- there is a button `Bookmark` that
    - if not already bookmarked, when clicked will add this song to the current user's bookmarks
    - if already bookmarked it should say `Unbookmark` and allow the user to remove the bookmark

