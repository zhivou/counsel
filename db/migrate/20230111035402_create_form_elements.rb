class CreateFormElements < ActiveRecord::Migration[7.0]
  def change
    create_table :form_elements do |t|
      t.belongs_to :form_section, foreign_key: true
      t.belongs_to :form_element_question_type, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
