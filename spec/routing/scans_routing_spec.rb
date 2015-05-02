require "rails_helper"

RSpec.describe ScansController, :type => :routing do
  it "routes to #create" do
    expect(:post => "/scan").to route_to("scans#create")
  end    
end
