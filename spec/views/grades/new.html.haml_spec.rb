require 'spec_helper'

describe "grades/new" do
  before(:each) do
    assign(:grade, stub_model(Grade,
      :grade => 1,
      :quarter => "MyString"
    ).as_new_record)
  end

  it "renders new grade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grades_path, :method => "post" do
      assert_select "input#grade_grade", :name => "grade[grade]"
      assert_select "input#grade_quarter", :name => "grade[quarter]"
    end
  end
end
