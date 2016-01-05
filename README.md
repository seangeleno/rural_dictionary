# ![](https://ga-dash.s3.amazonaws.com/production/assets/logo-9f88ae6c9c3871690e33280fcf557f33.png) Project #2: Ruby on Rails App - Rural Dictionary

##Project 2: Building Your First Full-stack Application
####Overview

This second project is your first foray into building a full-stack application. You'll be building a Rails app, which means you'll learn about what it takes to build a functional application from the ground up yourself.

This is exciting! It's a lot, but we'll give you the tools over the next few weeks to be able build what you need, and you get to decide what you do with it. And you get to be creative in choosing what sort of application you want to build!

You will be working individually for this project, and you'll be designing the app yourself. We hope you'll exercise creativity on this project, sketch some wireframes before you start, and write user stories to define what your users will want to do with the app. Make sure you have time to run these ideas by your instructors to get their feedback before you dive too deep into code! Remember to keep things small and focus on mastering the fundamentals – scope creep/feature creep is the biggest pitfall for any project!
Technical Requirements

Your app must:

 - Have at least 2 models (more if they make sense) – one representing someone using your application, and one that represents the main functional idea for your app
 -    Include sign up/log in functionality, with encrypted passwords & an authorization flow
 -    Have complete RESTful routes for at least one of your resources with GET, POST, PUT, PATCH, and DELETE
 -   Utilize an ORM to create a database table structure and interact with your relationally-stored data
 -   Include wireframes that you designed during the planning process
 -   Have semantically clean HTML and CSS
 -   Be deployed online and accessible to the public

Necessary Deliverables

  -  A working full-stack application, built by you, hosted somewhere on the internet
  - A link to your hosted working app in the URL section of your Github repo
  - A git repository hosted on Github, with a link to your hosted project, and frequent commits dating back to the very beginning of the project. Commit early, commit often.
  - A README.md file with explanations of the technologies used, the approach taken, installation instructions, unsolved problems, etc.
  - Wireframes of your app, hosted somewhere & linked in your README
  - A link in your README.md to the publically-accessible user stories you created

Suggested Ways to Get Started

 - Begin with the end in mind. Know where you want to go by planning with wireframes & user stories, so you don't waste time building things you don't need
 - Don’t hesitate to write throwaway code to solve short term problems
 - Read the docs for whatever technologies you use. Most of the time, there is a tutorial that you can follow, but not always, and learning to read documentation is crucial to your success as a developer
- Commit early, commit often. Don’t be afraid to break something because you can always go back in time to a previous version.
- User stories define what a specific type of user wants to accomplish with your application. It's tempting to just make them todo lists for what needs to get done, but if you keep them small & focused on what a user cares about from their perspective, it'll help you know what to build.
- Write pseudocode before you write actual code. Thinking through the logic of something helps.

***

This is my General Assembly WDI 19 Project #2. It uses **Ruby on Rails** to create a dictionary type app.

I called it rural dictionary.

Five different controllers and three different models were used.

# Rural Dictionary Online Definitions Project

This is the README markdown for Rural Dictionary Local Activity Finder Project.

The primary service of Rural Dictionary is to allow people to define any word they'd like and vote on the accuracy of that word in order to document and expand the english language in an unorthodox manner. This markdown will provide full descriptive details about Rural Dictionary, including the technologies used (langauages, frameworks, packages, etc.), where the application is hosted online, etc.

### Contents

- General Assembly - Web Development Intensive 19 Santa Monica Project #2.
- Description of Rural Dictionary.
- Technologies used.
- How to pull from Github and get it running locally on your computer.
- Hosting site.
- User Stories

### Team seangeleno

| Name               | Slack               | Email                    | GitHub      |
|--------------------|:-------------------:|:------------------------:|:-----------:|
| Sean Esteva        | @seangeleno         | seangeleno@gmail.com     | /seangeleno |


### Description of Rural Dictionary

Rural Dictionary will provide ONLY logged in users the ability to create new definitions. If a user does not have a profile, they must CREATE one prior to using Rural Dictionary's services. After successfull sign-in, the user will be taken to their home page where all the words they've defined so far are listed for review.

Words will be ranked according to the amount of up-votes vs down-votes a particular word has. The words, users and votes are all stored in a SQL database, using postgresql as the managament system.

There will be full CRUD functionality for users for their profiles. Users will be able to CREATE a user profile, and upon signing in, have the ability to READ their user info, UPDATE/edit their information, and DESTROY their user profile. If the user attempts to provide credentials and fails at authentication three times in a row, they will be forwarded to the CREATE user (sign-up) page.


## Technologies Used

- Languages/Technologies Used: Ruby on Rails, Ruby, PostgreSQL, HTML, CSS
- Additional Technologies: Bootstrap, Github

## Hosting Site

The current plan is to initiation Rural Dictionary as a Git Repository and push the application to Heroku for public consumption.

## User Stories

Story 1 - User, Fred, can't find a word in the Oxford English Dictionary, he goes on Rural Dictionary and he finds his definition.
