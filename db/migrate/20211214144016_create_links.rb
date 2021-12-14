class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.integer :visits, default: 0

      t.timestamps
    end
  end
end
