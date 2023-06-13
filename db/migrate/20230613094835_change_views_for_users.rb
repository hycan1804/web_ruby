class ChangeViewsForUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :user,:views,:integer,default: 0
  end
end
