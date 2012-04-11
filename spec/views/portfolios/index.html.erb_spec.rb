require 'spec_helper'

describe "portfolios/index.html.erb" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio,
        :name => "Name",
        :description => "Description"
      ),
      stub_model(Portfolio,
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
