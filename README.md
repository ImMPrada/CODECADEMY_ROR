# CODECADEMY_ROR

### LEARN RUBY ON RAILS
# Broadway
Broadway wants to build a Rails app for their home page. Here’s what it looks like. Looking at the request/response cycle, we need three parts to build this Rails app - a route, a controller, and a view. To preview your app at any point:

In the terminal, type rails s -p 4001
In the browser, visit http://localhost:4001

# Bolt Network
Bolt Network wants to create a Rails app with a Home page and an About page. Here’s what it looks like.

Using the request/response cycle as a guide, there are eight changes to be made.

To preview your app at any point:

In the terminal, type rails s -p 4001
In the browser, visit http://localhost:4001

# SAVING DATA
### Request/Response Cycle

So far we’ve built a Rails app containing a static page. To do this, we used a controller, a route, and a view. The request/response cycle summarizes how these three parts work together.

However, a Rails app with static pages looks the same for all users. How can we create apps that save information? We do this with a database. Here’s how a database fits into the request-response cycle. Check out the diagram in the browser.

When you type http://localhost:8000/welcome, the browser makes a request for the URL /welcome.
The request hits the Rails router.
The router maps the URL to a controller action to handle the request.
The controller action recieves the request, and asks the model to fetch data from the database.
The model returns data to the controller action.
The controller action passes the data on to the view.
The view renders the page as HTML.
The controller sends the HTML back to the browser.