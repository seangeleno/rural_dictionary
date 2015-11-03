class AddDefinitionToWords < ActiveRecord::Migration
  def change
    add_reference :words, :definition, index: true, foreign_key: true
  end
end
