class AddHostAnswerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :host_answer, :boolean
  end
end
