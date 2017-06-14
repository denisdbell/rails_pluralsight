class AddIndexesToResumes < ActiveRecord::Migration[5.0]
  def change
    add_index :resumes, :name
  end
end
