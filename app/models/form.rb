class Form < ApplicationRecord
    has_many :form_sections, dependent: :destroy
    has_many :form_states, dependent: :destroy
    has_many :form_statuses, dependent: :destroy
    has_many :form_responses, dependent: :destroy
end
