class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name,         default: ''
      t.text :description,    default: ''
      t.decimal :price,       default: 0.0
      t.boolean :diary_free,  default: false
      t.boolean :gluten_free, default: false
      t.boolean :kosher,      default: false
      t.boolean :peanut_free, default: false
      t.boolean :vegan,       default: false
      t.boolean :vegetarian,  default: false
      t.boolean :available,   default: true
      t.boolean :catering,    default: false
      t.boolean :featured,    default: false

      t.timestamps
    end
  end
end
