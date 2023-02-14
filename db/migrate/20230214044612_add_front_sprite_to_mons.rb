class AddFrontSpriteToMons < ActiveRecord::Migration[6.1]
  def change
    add_column :mons, :front_sprite_img, :string
  end
end
