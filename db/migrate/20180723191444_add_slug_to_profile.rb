class AddSlugToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :slug, :string
    add_column :profiles, :uname, :string
  end
end
