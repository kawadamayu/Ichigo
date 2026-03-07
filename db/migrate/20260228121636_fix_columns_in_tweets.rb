class FixColumnsInTweets <ActiveRecord::Migration[7.0]
  def change
    # カラム名修正
    rename_column :tweets, :tittle, :title

    # データ型変更
    change_column :tweets, :sweet, :integer
    change_column :tweets, :price, :integer
  end
end