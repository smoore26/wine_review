class Wine < ActiveRecord::Base

VARIETALS = ['Restylane', 'Zinfindel', 'Merlot', 'Pinot Nior']

has_many :log_entries, dependent: :destroy
#scope :by, ->(varietal) { where('varietal = ?', varietal) }
validates :name, :year, :country, :varietal, presence: true
validates :varietal, :inclusion => { :in => VARIETALS}
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end