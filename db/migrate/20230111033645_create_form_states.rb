class CreateFormStates < ActiveRecord::Migration[7.0]
  def change
    create_table :form_states do |t|
      t.string :name
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
