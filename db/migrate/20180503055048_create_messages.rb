class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :user, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
