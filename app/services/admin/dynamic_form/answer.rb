module Admin::DynamicForm
    class Answer < ApplicationService
        attr_reader :element_id

        def initialize(element_id)
            @element_id = element_id
        end

        def call
            
        end
    end
end
