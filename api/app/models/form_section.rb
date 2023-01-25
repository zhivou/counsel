class FormSection < ApplicationRecord
    belongs_to :form
    has_many :form_elements, dependent: :destroy
    belongs_to :form_section_type
end
