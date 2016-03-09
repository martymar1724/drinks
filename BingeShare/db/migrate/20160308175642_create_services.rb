class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|

    	t.string :name
    	t.string :user_login
    	t.string :login_password
    	t.references :group

      	t.timestamps null: false
      	
    end
  end
end
