class AddUserToContacts < ActiveRecord::Migration[5.0]
  def change
    add_reference :contacts, :user, foreign_key: true, index: true
  end
end
