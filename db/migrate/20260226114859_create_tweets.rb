class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :tittle
      t.string :sweet
      t.string :place
      t.string :price
      t.string :image

      t.timestamps
    end
  end
end
