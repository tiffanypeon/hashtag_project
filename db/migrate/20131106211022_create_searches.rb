class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :original_string
      t.string :normalized_string
      t.references :answer_id, index: true

      t.timestamps
    end
  end
end
