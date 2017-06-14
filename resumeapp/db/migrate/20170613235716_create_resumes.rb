class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city
      t.string :state
      t.integer :zip
      t.text :summary

      t.timestamps
    end
  end
end
