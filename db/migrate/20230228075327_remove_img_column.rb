class RemoveImgColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :mons, :front_sprite_img
  end
end
