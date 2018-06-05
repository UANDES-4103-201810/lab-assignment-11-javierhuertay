class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.date :date
      t.text :content

      t.timestamps
    end
  end
end
