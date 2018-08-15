class CreateAuthorsBooksCategoriesUsersBookusers < ActiveRecord::Migration[4.2]
  def change
    create_table :authors do |t|
      t.string :name
    end
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
    end
    create_table :users do |t|
      t.string :name
    end
    create_table :categories do |t|
      t.string :name
    end
    create_table :bookusers do |t|
      t.integer :user_id
      t.integer :book_id
    end
  end
end
