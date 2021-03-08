class CreateStories < ActiveRecord::Migration[6.1]
  def change
    create_table :stories do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
