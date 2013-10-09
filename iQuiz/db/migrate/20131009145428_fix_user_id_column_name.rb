class FixUserIdColumnName < ActiveRecord::Migration
  def change
    rename_column :responses, :user_id_id, :user_id

  end
end
