class CreateFormResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :form_responses do |t|
      t.belongs_to :form, foreign_key: true

      t.timestamps
    end
  end
end
