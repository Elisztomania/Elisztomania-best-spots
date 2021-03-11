class AddWebsiteToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :website, :string
  end
end
