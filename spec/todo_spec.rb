require 'spec_helper'
require 'httparty'
require 'yaml'

describe "ToDo" do
  let(:rget) {rget = HTTParty.get "http://lacedeamon.spartaglobal.com/todos"}
  let(:data) {data = YAML.load(File.open('data.yaml'))}

  it "Should post" do
    expect(rget.code).to eq(200)
  end
end
