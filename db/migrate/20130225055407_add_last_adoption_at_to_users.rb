class AddLastAdoptionDateToUsers < ActiveRecord::Migration

	def change
		add_column :users, :last_adoption_at, :timestamp
	end

end
