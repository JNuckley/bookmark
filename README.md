This is a Maker's academy pairing challenge - Bookmarks manager

https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md#challenges

POSTGRES INSTRUCTIONS FOR DATABASE(Table)
 1. Connect to psql (brew services start postgresql)
 2. Create the database using the psql command CREATE DATABASE bookmark_manager;
    (CREATE DATABASE bookmark_manager;)
 3. Connect to the database using the psql command \c bookmark_manager;
 4. Run the query we have saved in the file 01_create_bookmarks_table.sql
 5. Run the query we saved in the file 02_add_title_to_bookmark.sql

 POSTGRES INSTRUCTIONS FOR TEST DATABASE(Table)
  1. Connect to psql (brew services start postgresql)
  2. Create the database using the psql command CREATE DATABASE bookmark_manager_test;
  3. Connect to the database using the psql command \c bookmark_manager_test;
  4. Run the query we have saved in the file 01_create_bookmarks_table.sql
  5. Run the query we saved in the file 02_add_title_to_bookmark.sql

  SETTING UP THE TEST ENVIRONMENT
  1. Create a file called setup_test_database.rb
  2. Require 'pg' in the file (psql)
  3. Define a method in there called setup_test_database
  4. Make it return something in the terminal so you know it is working (ie. p "Setting up database...")
  5. Connect to the database > (connection = PG.connect(dbname: 'bookmark_manager_test'))
  6. Truncate the table > connection.exec("TRUNCATE bookmarks;")
  7. Go into spec_helper.rb and require_relative setup_test_databse
  8. State ENV['Environment'] = 'test' (this needs to be at the top under the requires)
  9. In RSPec config, insert config.before(:each) do and call the setup_test_database method

USER STORIES

-- As a user,
   so i can see my stored bookmarks,
   i want to view my bookmarks as a list

-- As a user,
   so i can store my bookmarks,
   i want to add a bookmark to my list

-- As a user,
   so i can change my list,
   i want to delete a bookmark from my list

-- As a user,
   so i can keep my list up to date,
   i want to update a bookmark

-- As a user,
   so that i can add information,
   i want to comment on a bookmark

-- As a user,
   so i can organise my bookmarks,
   i want to tag a bookmark into categories

-- As a user,
   so my bookmarks are easily found,
   i want to filter by tag

-- As a user,
   so that my bookmarks are private,
   i want to be the only one with access to my bookmarks

-- MODEL LAYER --

Class        Methods
USER      >> ID/Name
BOOKMARKS >> List, Add, delete, update, comment, category tag,
             filter by tag, restrict to user

-- DOMAIN MODEL --
