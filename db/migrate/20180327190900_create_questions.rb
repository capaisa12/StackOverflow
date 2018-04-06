class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.date :fecha
      t.string :email
      t.integer :NoAnswer
      t.integer :NoVotos

      t.timestamps
    end
  end
end
