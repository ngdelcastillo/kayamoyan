require 'spec_helper'

describe "schools/show" do
  before(:each) do
    @school = assign(:school, stub_model(School,
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :website => "Website",
      :sch_type => "Sch Type",
      :religion => "Religion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Phone/)
    rendered.should match(/Website/)
    rendered.should match(/Sch Type/)
    rendered.should match(/Religion/)
  end
end
