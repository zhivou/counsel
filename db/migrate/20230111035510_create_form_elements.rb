class CreateFormElements < ActiveRecord::Migration[7.0]
  def change
    create_table :form_elements do |t|
      t.string :title
      t.text :subtitle
      t.text :help_text
      t.string :label
      t.string :position
      t.boolean :required
      t.json :data
      
      t.belongs_to :form_section, foreign_key: true
      t.belongs_to :form_element_question_type, foreign_key: true
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
