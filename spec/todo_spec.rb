require 'spec_helper'
require 'httparty'
require 'yaml'

describe "ToDo" do
  let(:rget) {rget = HTTParty.get "http://lacedeamon.spartaglobal.com/todos"}
  let(:data) {data = YAML.load(File.open('data.yaml'))}
  let(:entry) {entry = data["list"]}
  it "Should get collection" do
    expect(rget.code).to eq(200)
  end

  it "Create an item" do 
    rpost = HTTParty.post "http://lacedeamon.spartaglobal.com/todos", query: entry[0]
    id = rpost["id"]
    expect(rpost.code).to eq(201)
    HTTParty.delete "http://lacedeamon.spartaglobal.com/todos/#{id}"
  end

end
