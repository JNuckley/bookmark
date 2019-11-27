## Create a table in psql with a unique identifier and a url with a max character length of 60

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
