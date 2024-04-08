class CreateAvatars < ActiveRecord::Migration[7.0]
  def change
    create_table :avatars do |t|
      t.string :name
      t.integer :ki
      t.text :description
      t.integer :gender
      t.integer :weight
      t.date :date_of_birth
      t.integer :status, default: 1
      t.references :user_admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
