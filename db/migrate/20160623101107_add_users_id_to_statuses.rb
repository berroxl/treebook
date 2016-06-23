class AddUsersIdToStatuses < ActiveRecord::Migration
  def change
  	#add column on statuses table (user_id)
  	#since you want to find user based on status add (index)
  	#you are not going to need name field on statuses anymore, so you can remove that.
  add_column :statuses, :user_id, :integer
  add_index :statuses, :user_id
  remove_column :statuses, :name

  end
end
