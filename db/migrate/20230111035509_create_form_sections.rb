class CreateFormSections < ActiveRecord::Migration[7.0]
  def change
    create_table :form_sections do |t|
      t.string :title
      t.text :subtitle
      t.string :positon

      t.belongs_to :form, foreign_key: true
      t.belongs_to :form_section_type, foreign_key: true

      t.timestamps
    end
  end
end
