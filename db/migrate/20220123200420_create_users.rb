class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    if !table_exists?(:users)
      create_table :users do |t|
        t.string :username
        t.string :email
        t.timestamps
    end
    end
  end
end
