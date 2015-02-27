require 'spec_helper'
require 'httparty'
require 'yaml'

describe "ToDo" do
  let(:data) {data = YAML.load(File.open('data.yaml'))}
  let(:entry) {entry = data["list"]}

  it "Should get collection" do
    expect((HTTParty.get "http://lacedeamon.spartaglobal.com/todos").code).to eq(200)
  end

  it "Should get an object" do
    id = (HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[0])["id"]
    expect((HTTParty.get "http://lacedeamon.spartaglobal.com/todos/#{id}").code).to eq(200)
    HTTParty.delete "http://lacedeamon.spartaglobal.com/todos/#{id}"
  end

  it "Should create an object" do 
    rpost = HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[0]
    id = rpost["id"]
    expect(rpost.code).to eq(201)
    HTTParty.delete "http://lacedeamon.spartaglobal.com/todos/#{id}"
  end

  it "Should not create an object with wrong formatting" do
    expect((HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[4]).code).to eq(500)
  end 

  it "Should not create an object with missing parameters" do
    expect((HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[2]).code).to eq(422)
  end

  it "Should not create an object within an existing object" do
    id = (HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[0])["id"]
    expect((HTTParty.post "http://lacedeamon.spartaglobal.com/todos/#{id}", query: entry[0]).code).to eq(405)
    HTTParty.delete "http://lacedeamon.spartaglobal.com/todos/#{id}"
  end
  
  it "Should not create an within a non-existing object" do
    expect((HTTParty.post "http://lacedeamon.spartaglobal.com/todos/1", query: entry[0]).code).to eq(405)
  end

  it "Should delete an object" do
    rpost = HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[0]
    id = rpost["id"]
    expect((HTTParty.delete "http://lacedeamon.spartaglobal.com/todos/#{id}").code).to eq(204)
  end

  it "Should not delete a collection" do
    
  end

  it "Should not delete an object that is non-existent" do
    
  end

  it "Should use put to change the content of an object" do
    
  end

  it "Should use patch to change all content of an object" do
    
  end

  it "Should use patch to change parts of an object" do
    
  end

  it "Should not change content of an object with put if there is missing parameters" do
    
  end
end
