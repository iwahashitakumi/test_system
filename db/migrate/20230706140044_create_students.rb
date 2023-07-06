class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :alias
      t.integer :student_code
      t.integer :grade
      t.date :birth
      t.date :admission

      t.timestamps
    end
  end
end
