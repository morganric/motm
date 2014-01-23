class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.string :title
      t.string :author
      t.string :image
      t.string :url

      t.timestamps
    end
  end
end
