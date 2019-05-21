class ChangeReferenceNameDoses < ActiveRecord::Migration[5.2]
  def change
    remove_reference :doses, :ingredients
    remove_reference :doses, :cocktails
    add_reference :doses, :ingredient, foreign_key: true
    add_reference :doses, :cocktail, foreign_key: true
  end
end
