/* For all of these sql questions, assume the following schema

CREATE TABLE common_user
(
  // The basic user of the application
  id serial not null PRIMARY KEY,
  first_name character varying(200) not null,
  last_name character varying(200) not null,
  email character varying(200) not null,
  joined_at timestamp with time zone not null,
  is_active boolean not null,
  last_login timestamp with time zone
)

create table common_token
(
  // A user's token (used for authentication against the API)
  id serial not null PRIMARY KEY,
  key character varying(40) not null,
  user_id int not null REFERENCES common_user (id) ON DELETE CASCADE,
  created_at timestamp with time zone not null,
  expires_at timestamp with time zone
)

create table common_post
(
  // Text content generated by users
  id serial not null PRIMARY KEY,
  body_text character varying(2000) not null,
  user_id int not null REFERENCES common_user (id) ON DELETE CASCADE,
  created_at timestamp with time zone not null,
)
*/

/*

QUESTION 1: Given the "key" value of a user's token, ensure the token has not expired.
    If not, update the user's last_login value to the current date & time (UTC) and then return the applicable user row.

*/


/*

QUESTION 2: Create a query to clean up (delete) all tokens that have been expired for at 30 days or more.

*/


/*

QUESTION 3: Based on the preceding 2 problems, suggest indices that would maximize performance of the queries and
    operations involved.

*/