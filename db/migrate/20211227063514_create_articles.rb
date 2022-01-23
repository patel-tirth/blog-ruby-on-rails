class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    if !table_exists?(:articles)
      create_table :articles do |t|
        t.string :title
        t.timestamps
    end
    end
  end
end
