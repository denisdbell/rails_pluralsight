class CreateMappingTable < ActiveRecord::Migration[5.0]
  def change
    create_table :employers_resumes do |t|
      t.integer :employer_id
      t.integer :resume_id
    end
  end
end
