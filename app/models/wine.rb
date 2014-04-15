class Wine < ActiveRecord::Base
VARIETALS = ['Restylane', 'Zinfindel', 'Merlot', 'Pinot Nior', ]
scope :bargains, -> { where('price < 25.00') }
scope :by, ->(author) { where('varietal = ?', varietal) }
validates :name, :year, :country, :varietal, presence: true
validates :year,
numericality: { only_integer: true, greater_than_or_equal_to: 0 },
unless: "year.blank?"
    validates :price,
    numericality: { greater_than_or_equal_to: 0 },
    if: "price.present?"
end