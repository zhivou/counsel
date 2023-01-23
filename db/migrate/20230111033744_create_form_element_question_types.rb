class CreateFormElementQuestionTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :form_element_question_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
