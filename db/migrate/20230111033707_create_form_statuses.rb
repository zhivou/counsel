class CreateFormStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :form_statuses do |t|

      t.timestamps
    end
  end
end
