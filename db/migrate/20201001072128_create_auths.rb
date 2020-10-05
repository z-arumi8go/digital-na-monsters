class CreateAuths < ActiveRecord::Migration[6.0]
  def change
    create_table :auths do |t|
      t.bingint :user_id
      t.string  :token     #認証用

      t.timestamps
    end
  end
end
