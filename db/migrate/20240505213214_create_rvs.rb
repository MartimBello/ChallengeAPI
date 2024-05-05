class CreateRvs < ActiveRecord::Migration[7.1]
  def change
    create_table :rvs do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.text :description
      t.string :image_url
      t.float :daily_rate

      t.timestamps
    end
  end
end
