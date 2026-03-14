class AddQuestions5To10ToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :question5, :string
    add_column :perfumes, :question6, :string
    add_column :perfumes, :question7, :string
    add_column :perfumes, :question8, :string
    add_column :perfumes, :question9, :string
    add_column :perfumes, :question10, :string
  end
end
