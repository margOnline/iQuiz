class FixQuestionColumnName < ActiveRecord::Migration
  def change
    rename_column :questions, :question, :query
  end
end
