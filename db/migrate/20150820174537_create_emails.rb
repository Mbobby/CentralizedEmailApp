class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.integer :authorId
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
