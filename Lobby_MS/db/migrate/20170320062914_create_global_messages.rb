class CreateGlobalMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :global_messages do |t|
      t.text :content
      t.integer :idUser

      t.timestamps
    end
  end
end
