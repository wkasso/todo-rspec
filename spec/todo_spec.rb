require 'spec_helper'
require 'httparty'

describe "ToDo" do
  let(:rget) {rget = HTTParty.get "http://lacedeamon.spartaglobal.com/todos"}
  it "Should post" do
    expect(rget.code).to eq(200)
  end
end
