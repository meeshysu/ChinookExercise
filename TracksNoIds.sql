-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre.
select t.[Name] as "Track Name", m.[Name] as "Media Type", g.[Name] as "Genre Kind", a.Title as "Album Name"
from Track t, MediaType m, Genre g, Album a
where t.[Name] = a.Title;