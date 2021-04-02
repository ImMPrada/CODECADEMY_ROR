# **CODECADEMY RUBY ON RAILS**

[![N|Solid](https://i.pinimg.com/originals/8b/5d/66/8b5d66fa1166f517904a63f33c1d4f13.png)](https://www.codecademy.com/learn/learn-rails)

Here is the pack of projects made coursing codecademy's _Learning Ruby on rails_:

- **Getting started:**
-- Broadway
-- Bolt network

- **Saving data:**
-- Messenger App

## Getting started

## Saving data
### Messenger app
#### _Request/Response Cycle_
So far we’ve built a Rails app containing a static page. To do this, we used a controller, a route, and a view. The request/response cycle summarizes how these three parts work together.

However, a Rails app with static pages looks the same for all users. How can we create apps that save information? We do this with a database. Here’s how a database fits into the request-response cycle. Check out the diagram in the browser.

When you type http://localhost:8000/welcome, the browser makes a request for the URL /welcome.
- The request hits the Rails router.
- The router maps the URL to a controller action to handle the request.
- The controller action recieves the request, and asks the model to fetch data from the database.
- The model returns data to the controller action.
- The controller action passes the data on to the view.
- The view renders the page as HTML.
- The controller sends the HTML back to the browser.
- Import a HTML file and watch it magically convert to Markdown
- Drag and drop images (requires your Dropbox account be linked)
- Import and save files from GitHub, Dropbox, Google Drive and One Drive
- Drag and drop markdown and HTML files into Dillinger
- Export documents as Markdown, HTML and PDF

#### _Model_
Great! You created a new Rails app named MessengerApp.
Looking at this diagram of the request/response cycle, we need four parts to build a Rails app - a model, a route, a controller, and a view.

#### _Controller_
1. The rails generate model command created a new model named Message. In doing so, Rails created two files:

    - a model file in app/models/message.rb. The model represents a table in the database.
    - a migration file in db/migrate/. Migrations are a way to update the database.


2. Open the migration file in db/migrate/. The migration file contains a few things:

    - The change method tells Rails what change to make to the database. Here it uses the create_table method to create a new table in the database for storing messages.
    - Inside create_table, we added t.text :content. This will create a text column called content in the messages tables.
    - The final line t.timestamps is a Rails command that creates two more columns in the messages table called created_at and updated_at. These columns are automatically set when a message is created and updated.


3. The bundle exec rake db:migrate command updates the database with the new messages data model. With this command, we instruct the bundler to execute (exec) a rake task, in this case, migrate, on the database (db).


4. Finally the bundle exec rake db:seed command seeds the database with sample data from db/seeds.rb.

#### _View_
Nice work. We added a controller and a route to the Rails app.

Why does the Messages controller use an action named index? Check out the diagram in the browser. Rails provides seven standard controller actions for doing common operations with data. Here we want display a list of all messages, so we used the index action.

Putting it all together:

  - When a user visits http://localhost:8000/messages, the routes file maps this request to the Messages controller’s index action.
  - The index action retrieves all messages from the database and stores them in variable @messages.
  - The @messages variable is passed on to the view. The view should display each message, so let’s set it up next.

#### _Create messages I_
Nice work! The app now displays a list of all messages in the database. How does this work?

The file index.html.erb is a web template. Web templates are HTML files that contain variables and control flow statements. Rather than write the same HTML over and over again for each message, we can use web templates to loop through and display data from the database.

In this case:

  - <% @messages.each do |message| %> iterates through each message in @messages array. We created @messages in the Messages controller’s index action.
  - For each message, we use <%= message.content %> and <%= message.created_at %> to display its content and the time when it was created.
  - The default web templating language in Rails is embedded Ruby, or ERB.

#### _Create messages II_
Nicely done! The app now takes in messages through a form and saves them into the database. How does this work? Let’s use the request/response cycle as a guide to trace how a user’s request flows through the app.

When you visit http://localhost:8000/messages/new to create a new message, it triggers the first turn of the request/response cycle:

1. The browser makes a HTTP GET request for the URL /messages/new.
2. The Rails router maps this URL to the Messages controller’s new action. The new action creates a new Message object @message and passes it on to the view in app/views/messages/new.html.erb.
3. In the view, form_for creates a form with the fields of the @message object.

Then when you fill out the form and press Create, it triggers the second turn of the request/response cycle:

1. The browser sends the data to the Rails app via an HTTP POST request to the URL /messages.
2. This time, the Rails router maps this URL to the create action.
3. The create action uses the message_params method to safely collect data from the form and update the database.

Here we used link_to to create a link to /messages/new. Instead of hardcoding <a> elements, we can use link_to to generate links:

- the first parameter is the link text
- the second parameter is the URL