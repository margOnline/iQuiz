class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.boolean :solution

      t.timestamps
    end
  end
end
