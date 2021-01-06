class ChangeColumnToEvents < ActiveRecord::Migration[6.0]
  def up
    change_column :events, :owner_id, :bigint, null: true
  end

  def down
    change_column :events, :owner_id, :bigint, null: false
  end
end
