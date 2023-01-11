class CreateFormSectionTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :form_section_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
