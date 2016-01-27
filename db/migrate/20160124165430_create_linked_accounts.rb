class CreateLinkedAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :linked_accounts do |t|
      t.integer :first_account_id
      t.integer :last_account_id

      t.timestamps
    end

    add_index :linked_accounts, :first_account_id
    add_index :linked_accounts, :last_account_id
  end
end
