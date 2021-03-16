class CreateBusinesses < ActiveRecord::Migration[6.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :website
      t.string :state
      t.date :founded_date
      t.timestamps
    end
  end
end
