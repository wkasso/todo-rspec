# Todo testing using RSpec and Watir

## Installation
Execute bundler on a command line interface such as git bash within PATH to install all required gems
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
