class CreateGlobalmessages < ActiveRecord::Migration[5.0]
  def change
    create_table :globalmessages do |t|
      t.string :username
      t.string :content

      t.timestamps
    end
  end
end
