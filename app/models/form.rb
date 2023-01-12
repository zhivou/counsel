class Form < ApplicationRecord
    has_many :form_sections, dependent: :destroy
    belongs_to :form_state, dependent: :destroy
    has_many :form_responses, dependent: :destroy
end
