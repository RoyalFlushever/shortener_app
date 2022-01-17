class AddRemoteIpToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :remote_ip, :string
  end
end
