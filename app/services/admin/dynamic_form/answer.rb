module Admin::DynamicForm
    class Answer < ApplicationService
        attr_reader :form_element_id
                    :repsonse_data

        def initialize(form_element_id, repsonse_data)
            @form_element_id = form_element_id
            @repsonse_data = repsonse_data
        end

        #
        # TODO: Check response data type
        def call
            form_element = find_form_element
            FormResponse.create!(
                form_element_id: form_element_id, 
                form_id: form_element.form.id,
                repsonse_data: {
                    type: response_data_type(form_element),
                    value: repsonse_data
                }
            )
        end

        private
        def find_form_element
            FormElement.find(form_element_id)
        end

        def response_data_type(form_element)
            form_element.form_element_question_type.name
        end
    end
end
