class CreateEmailsUsers < ActiveRecord::Migration
  def change
    create_table :emails_users do |t|
    	t.integer :user_id
    	t.integer :email_id
    end
  end
end
