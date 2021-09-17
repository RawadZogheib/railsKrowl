class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.text :name
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end
