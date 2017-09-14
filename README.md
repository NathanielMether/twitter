# README

# Database (DB)
## ERD (Entity Relationship Diagram)
![erd database](/docs/erd.png)

# DB Tables
I made 3 tables for my app, User, Tweet and Profile. User stories the information like password etc. Tweet stores the information message that a user tweets and the Profile table stores information about the user. Each user has one Profile and many Tweets.

## User
- email
- password

## Profile
- avatar
- first_name
- last_name
- country
- user_id (belongs_to)

## Tweet
- message
- user_id (belongs_to)

# Pages
## homepage
- tweets on page
- log in/out

## tweet shoe page
- see tweet
- edit tweet (if logged in)

## profile page
- first_name,  last_name
- tweet_count
- avatar
- country
- 