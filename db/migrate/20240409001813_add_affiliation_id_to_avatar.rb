class AddAffiliationIdToAvatar < ActiveRecord::Migration[7.0]
  def change
    add_reference :avatars, :affiliation, null: false, foreign_key: true
  end
end
