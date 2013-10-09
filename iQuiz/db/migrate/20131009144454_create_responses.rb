class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.references :user, index: true
      t.decimal :score

      t.timestamps
    end
  end
end
