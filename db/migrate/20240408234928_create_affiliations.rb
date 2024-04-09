class CreateAffiliations < ActiveRecord::Migration[7.0]
  def change
    create_table :affiliations do |t|
      t.string :name
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
