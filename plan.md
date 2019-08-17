# Plan

## User
have a user table
| First name | Surname | e-mail address | password |
--- | --- | --- |--- |
add user table to migrations
create a user controller
decide what to use for password verification
user can sign up
include password reset feature for if user forgets their password (email)
user can only sign up with unique email address
user can log in
user can log out

## Recipe
### Recipe table
have a recipe table
| User id (foreign key) | recipe_name | description |picture_url | cuisine (use tags?) |
--- | --- | --- | --- | --- |

### Recipe Ingredients table
| recipe_id (forgein key) | name| quantity | unit |
--- | --- | --- |

### Recipe Method table
| recipe_id (forgein key) | method_description| step_order |
--- | --- | ---|

CREATE TABLE users (user_id serial PRIMARY KEY, first_name VARCHAR (20) not null, surname VARCHAR (20) not null, email text not null unique, password_digest text not null);