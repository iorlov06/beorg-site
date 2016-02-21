class AddInfoToNewsArticles < ActiveRecord::Migration
  def change
    add_column :news_articles, :info, :boolean, default: false
  end
end
