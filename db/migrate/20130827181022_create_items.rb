class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :body
      t.string :status
      t.boolean :completed, default: false
      t.integer :user_id

      t.timestamps
    end
  end
end
