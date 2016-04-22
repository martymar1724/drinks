class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

      t.integer :group_id
    	t.integer :user_owner
      t.text :members, array: true, default: []
      t.text :member1
      t.text :member2
      t.text :member3
      t.text :member4
    	t.text :url
    	t.text :login_name
    	t.text :login_password
    	t.references :user
    	t.references :group
      t.timestamps null: false
    end
  end
end
