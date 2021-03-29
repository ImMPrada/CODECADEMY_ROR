# ***CODECADEMY_ROR***

###### **LEARN RUBY ON RAILS**
## **Broadway**
Broadway wants to build a Rails app for their home page. Here’s what it looks like. Looking at the request/response cycle, we need three parts to build this Rails app - a route, a controller, and a view. To preview your app at any point:

In the terminal, type rails s -p 4001
In the browser, visit http://localhost:4001

## **Bolt Network**
Bolt Network wants to create a Rails app with a Home page and an About page. Here’s what it looks like.

Using the request/response cycle as a guide, there are eight changes to be made.

To preview your app at any point:

In the terminal, type rails s -p 4001
In the browser, visit http://localhost:4001

## **SAVING DATA**
###### ***Request/Response Cycle***

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

###### _Model_

Great! You created a new Rails app named MessengerApp.
Looking at this diagram of the request/response cycle, we need four parts to build a Rails app - a model, a route, a controller, and a view.
Let’s start here by creating a model.

###### _Controller_

1. The rails generate model command created a new model named Message. In doing so, Rails created two files:

    - a model file in app/models/message.rb. The model represents a table in the database.
    - a migration file in db/migrate/. Migrations are a way to update the database.


2. Open the migration file in db/migrate/. The migration file contains a few things:

    - The change method tells Rails what change to make to the database. Here it uses the create_table method to create a new table in the database for storing messages.
    - Inside create_table, we added t.text :content. This will create a text column called content in the messages tables.
    - The final line t.timestamps is a Rails command that creates two more columns in the messages table called created_at and updated_at. These columns are automatically set when a message is created and updated.


3. The bundle exec rake db:migrate command updates the database with the new messages data model. With this command, we instruct the bundler to execute (exec) a rake task, in this case, migrate, on the database (db).


4. Finally the bundle exec rake db:seed command seeds the database with sample data from db/seeds.rb.

###### _View_

Nice work. We added a controller and a route to the Rails app.

Why does the Messages controller use an action named index? Check out the diagram in the browser. Rails provides seven standard controller actions for doing common operations with data. Here we want display a list of all messages, so we used the index action.

Putting it all together:

  - When a user visits http://localhost:8000/messages, the routes file maps this request to the Messages controller’s index action.
  - The index action retrieves all messages from the database and stores them in variable @messages.
  - The @messages variable is passed on to the view. The view should display each message, so let’s set it up next.