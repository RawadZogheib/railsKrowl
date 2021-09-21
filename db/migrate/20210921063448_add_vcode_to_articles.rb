class AddVcodeToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :vcode, :integer
  end
end
