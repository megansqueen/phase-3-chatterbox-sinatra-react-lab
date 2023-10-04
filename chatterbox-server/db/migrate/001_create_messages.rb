class CreateMessages < ActiveRecord::Migration[6.1]
    def change
        create_table :messages do |m|
            m.string :body
            m.string :username
            m.timestamp :created_at
            m.timestamp :updated_at
        end
    end
end