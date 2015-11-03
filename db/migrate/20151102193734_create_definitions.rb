class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.text :definition
      t.integer :vote_up
      t.integer :vote_down

      t.timestamps null: false
    end
  end
end
