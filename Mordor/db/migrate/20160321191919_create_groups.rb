class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.text :name
    	t.references :user
    	t.integer :members, array: true, default: []
    	t.integer :member1
    	t.integer :member2
    	t.integer :member3
    	t.integer :member4
      	t.timestamps null: false
    end
  end
end
