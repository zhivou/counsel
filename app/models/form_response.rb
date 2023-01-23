class FormResponse < ApplicationRecord
    belongs_to :form
    belongs_to :form_element
end
