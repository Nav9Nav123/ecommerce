class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :heading
      t.text :body
      t.boolean :display

      t.timestamps
    end
  end
end
