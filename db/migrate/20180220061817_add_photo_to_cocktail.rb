class AddPhotoToCocktail < ActiveRecord::Migration[5.1]
  def change
    add_column :cocktails, :photo, :string, default: "http://res.cloudinary.com/find-my-flock/image/upload/v1519105206/rgdpygp1yex2bybpjcro.jpg"
  end
end
