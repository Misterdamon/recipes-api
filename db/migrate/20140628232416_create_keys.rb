class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.string :key_num
      t.belongs_to :user
    end
  end
end
