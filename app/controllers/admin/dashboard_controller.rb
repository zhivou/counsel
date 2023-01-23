module Admin
    class DashboardController < BaseController
        def index
            @form = Form.first
        end
    end
end