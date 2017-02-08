class AddPhoneToEmail < ActiveRecord::Migration[5.0]
  def change
    add_column :emails, :number, :string
  end
end
