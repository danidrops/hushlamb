class CreateStubs < ActiveRecord::Migration
  def change
    create_table :stubs do |t|
      t.string :code
      t.integer :ticket_id
    end
  end
end
