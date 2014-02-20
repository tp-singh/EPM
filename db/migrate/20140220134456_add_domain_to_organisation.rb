class AddDomainToOrganisation < ActiveRecord::Migration
  def change
    add_column :organisations, :domain, :string
  end
end
