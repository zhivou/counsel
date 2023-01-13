class Form < ApplicationRecord
    has_many :form_sections, dependent: :destroy
    belongs_to :form_state, dependent: :destroy
    has_many :form_responses, dependent: :destroy

    validates :name, presence: true
    validates :form_state_id, presence: true

    def self.get_form_state_id(state)
        FormState.find_by(name: state).id
    end
    
    # Find all FormElements for a given form
    def self.get_form_elements()
        FormElement.where(form_section_id: FormSection.where(form_id: self.id).pluck(:id))
    end
end
