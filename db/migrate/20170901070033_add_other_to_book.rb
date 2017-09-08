class AddOtherToBook < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :author_id, :integer
    add_column :books, :publish_time, :datetime
    add_column :books, :publication, :string
    add_column :books, :publication_id, :integer
    add_column :books, :free, :boolean
    add_column :books, :open, :boolean
    add_column :books, :status, :integer
  end
end
