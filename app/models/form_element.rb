class FormElement < ApplicationRecord
    belongs_to :form_section
    belongs_to :form_element_question_type
    has_many :form_responses
end
