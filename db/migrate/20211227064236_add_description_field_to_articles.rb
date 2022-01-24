class AddDescriptionFieldToArticles < ActiveRecord::Migration[7.0]
  def change
    if !table_exists?(:articles)
      add_column :articles, :description, :text
    end
  end
end
