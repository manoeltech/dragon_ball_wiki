require 'rails_helper'

RSpec.describe "races/new", type: :view do
  before(:each) do
    assign(:race, Race.new(
      name: "MyString",
      status: 1
    ))
  end

  it "renders new race form" do
    render

    assert_select "form[action=?][method=?]", races_path, "post" do

      assert_select "input[name=?]", "race[name]"

      assert_select "input[name=?]", "race[status]"
    end
  end
end
