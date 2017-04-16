class CreateLobbymessages < ActiveRecord::Migration[5.0]
  def change
    create_table :lobbymessages do |t|
      t.integer :iduser
      t.string :messagecontent

      t.timestamps
    end
  end
end
