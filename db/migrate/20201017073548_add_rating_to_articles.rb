class AddRatingToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :rating, :integer
  end
end
