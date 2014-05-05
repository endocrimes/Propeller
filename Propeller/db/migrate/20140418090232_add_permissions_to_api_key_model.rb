class AddPermissionsToApiKeyModel < ActiveRecord::Migration
  def change
    add_column :api_keys, :application_id, :integer
    add_column :api_keys, :register_devices, :boolean
    add_column :api_keys, :unregister_devices, :boolean
    add_column :api_keys, :list_devices, :boolean
  end
end
