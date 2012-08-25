require 'spec_helper'

describe "grades/index" do
  before(:each) do
    assign(:grades, [
      stub_model(Grade,
        :grade => 1,
        :quarter => "Quarter"
      ),
      stub_model(Grade,
        :grade => 1,
        :quarter => "Quarter"
      )
    ])
  end

  it "renders a list of grades" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Quarter".to_s, :count => 2
  end
end
