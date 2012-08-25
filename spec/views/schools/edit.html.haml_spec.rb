require 'spec_helper'

describe "schools/edit" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :website => "MyString",
      :sch_type => "MyString",
      :religion => "MyString"
    ))
  end

  it "renders the edit school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schools_path(@school), :method => "post" do
      assert_select "input#school_name", :name => "school[name]"
      assert_select "input#school_address", :name => "school[address]"
      assert_select "input#school_phone", :name => "school[phone]"
      assert_select "input#school_website", :name => "school[website]"
      assert_select "input#school_sch_type", :name => "school[sch_type]"
      assert_select "input#school_religion", :name => "school[religion]"
    end
  end
end
