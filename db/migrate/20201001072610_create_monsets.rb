class CreateMonsets < ActiveRecord::Migration[6.0]
  def change
    create_table :monsets do |t|

      t.timestamps
    end
  end
end
