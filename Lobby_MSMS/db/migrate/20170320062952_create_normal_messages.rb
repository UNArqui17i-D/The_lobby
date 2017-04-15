class CreateNormalMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :normal_messages do |t|
      t.integer :idUserA
      t.integer :idUserB
      t.text :content

      t.timestamps
    end
  end
end
