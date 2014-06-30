class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
