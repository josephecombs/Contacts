class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, presence: true
      t.string :email, presence: true
      t.integer :user_id, presence: true 
      
      
      t.timestamps
    end
    add_index :contacts, :user_id
    add_index :contacts, [:email, :user_id], unique: true
  end
end
