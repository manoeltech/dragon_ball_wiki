require 'rails_helper'

RSpec.describe "avatars/index", type: :view do
  before(:each) do
    assign(:avatars, [
      Avatar.create!(
        name: "Name",
        ki: 2,
        description: "MyText",
        gender: 3,
        weight: 4,
        status: 5,
        user_admin: nil
      ),
      Avatar.create!(
        name: "Name",
        ki: 2,
        description: "MyText",
        gender: 3,
        weight: 4,
        status: 5,
        user_admin: nil
      )
    ])
  end

  it "renders a list of avatars" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
