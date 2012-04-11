require 'spec_helper'

describe "portfolios/new.html.erb" do
  before(:each) do
    assign(:portfolio, stub_model(Portfolio,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => portfolios_path, :method => "post" do
      assert_select "input#portfolio_name", :name => "portfolio[name]"
      assert_select "input#portfolio_description", :name => "portfolio[description]"
    end
  end
end
