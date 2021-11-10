class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job
      t.string :state
      t.string :priority

      t.timestamps
    end
  end
end
