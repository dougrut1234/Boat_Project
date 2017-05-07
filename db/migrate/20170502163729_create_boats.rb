class CreateBoats < ActiveRecord::Migration[5.0]
  def change
    create_table :boats do |t|
    	t.string :name
    	t.string :location
    	t.integer :amount_of_containers
    	t.integer :job_id

      t.timestamps
    end
  end
end
