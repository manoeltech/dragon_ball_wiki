require 'rails_helper'

RSpec.describe "avatars/edit", type: :view do
  let(:avatar) {
    Avatar.create!(
      name: "MyString",
      ki: 1,
      description: "MyText",
      gender: 1,
      weight: 1,
      status: 1,
      user_admin: nil
    )
  }

  before(:each) do
    assign(:avatar, avatar)
  end

  it "renders the edit avatar form" do
    render

    assert_select "form[action=?][method=?]", avatar_path(avatar), "post" do

      assert_select "input[name=?]", "avatar[name]"

      assert_select "input[name=?]", "avatar[ki]"

      assert_select "textarea[name=?]", "avatar[description]"

      assert_select "input[name=?]", "avatar[gender]"

      assert_select "input[name=?]", "avatar[weight]"

      assert_select "input[name=?]", "avatar[status]"

      assert_select "input[name=?]", "avatar[user_admin_id]"
    end
  end
end
