### Bus-or-Uber

Bus-or-Uber is app that compares the time and money costs between taking an Uber or taking the Denver RDT system to get around Denver.  It’s perfect for college students or anyone who needs to choose between spending more money or time to get to where they want to go.  Just type in a starting and ending destination and we will generate estimated arrival times and costs for either an Uber or a bus ride.    

[Link to Production App](http://bus-or-uber.herokuapp.com/)

![](http://g.recordit.co/pIc8rrrLqZ.gif)

### Setup
To set up a local copy of this project, perform the following:
  1. Clone the repository
  2. `cd` into the project's directory
  3. Run `bundle install`
  4. Run `rails s` to fire up a local server and go to this address in a browser window - http://localhost:3000 .
  7. To run tests: `rspec`

### Tech
- This is a Rails app that uses javascript and ajax.
- The app uses the Uber api and google directions api.
