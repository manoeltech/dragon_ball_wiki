class AddRaceIdToAvatar < ActiveRecord::Migration[7.0]
  def change
    add_reference :avatars, :race, null: false, foreign_key: true
  end
end
