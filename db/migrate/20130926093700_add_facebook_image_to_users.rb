class AddFacebookImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider_image_url, :string
  end
end
