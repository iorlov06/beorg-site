class CreateNewsArticles < ActiveRecord::Migration
  def change
    create_table :news_articles do |t|
      t.string :title
      t.text :description
      t.string :picture_url

      t.timestamps null: false
    end
  end
end
