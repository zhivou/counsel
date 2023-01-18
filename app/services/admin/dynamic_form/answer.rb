module Admin::DynamicForm
    class Answer < ApplicationService
        attr_reader :form_element_id
                    :repsonse_data
                    :form_id

        def initialize(form_element_id, form_id, repsonse_data)
            @form_element_id = form_element_id
            @repsonse_data = repsonse_data
            @form_id = form_id
        end

        #
        # TODO: Check response data type
        def call
            FormResponse.create!(
                form_element_id: form_element_id, 
                form_id: form_id,
                repsonse_data: {
                    response_data_type: repsonse_data
                }
            )
        end

        private
        def find_form_element
            FormElement.find(form_element_id)
        end

        def response_data_type
            find_form_element.form_element_question_type.name
        end
    end
end
