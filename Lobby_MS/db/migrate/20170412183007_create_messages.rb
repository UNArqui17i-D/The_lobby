class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :iduser
      t.text :content

      t.timestamps
    end
  end
end
