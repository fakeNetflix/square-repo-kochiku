class AddSendMergeSuccessfulEmail < ActiveRecord::Migration[5.0]
  def change
    add_column :repositories, :send_merge_successful_email, :boolean, default: true, null: false
  end
end
