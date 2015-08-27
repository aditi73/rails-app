class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title #This line defines the title Attribute of the articles table
      t.text :body	#This line defines the body attribute of the articles table
      t.timestamps
    end
  end
end
