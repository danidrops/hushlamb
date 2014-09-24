class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :email
      t.integer :number
      t.string :note
    end
  end
end
