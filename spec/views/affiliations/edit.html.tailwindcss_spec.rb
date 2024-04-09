require 'rails_helper'

RSpec.describe "affiliations/edit", type: :view do
  let(:affiliation) {
    Affiliation.create!(
      name: "MyString",
      status: 1
    )
  }

  before(:each) do
    assign(:affiliation, affiliation)
  end

  it "renders the edit affiliation form" do
    render

    assert_select "form[action=?][method=?]", affiliation_path(affiliation), "post" do

      assert_select "input[name=?]", "affiliation[name]"

      assert_select "input[name=?]", "affiliation[status]"
    end
  end
end
