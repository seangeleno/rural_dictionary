class RemoveDefinitionIdFromWords < ActiveRecord::Migration
  def change
    remove_reference :words, :definition, index: true, foreign_key: true
  end
end
