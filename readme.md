# Todo testing using RSpec and Watir
## About
Tests http://lacedeamon.spartaglobal.com/todos to check all http response codes are correct when using CRUD requests
## Installation
1) Clone down the repository with the command: $git clone https://github.com/mwkasso/todo-rspec.git
2) Run: $bundle install
```ruby
bundle
```
## Running
Executing rspec will run all tests within PATH
```ruby
rspec
```
or use rake to run individual test packages each test case is named after CRUD. To run all tests that involve creating an object ust the following command
```ruby
rake create
```
To run all tests that involve reading
```ruby
rake read
```
To run all tests that involve updating
```ruby
rake update
```
To run all tests that involve delete
```ruby
rake delete
```
