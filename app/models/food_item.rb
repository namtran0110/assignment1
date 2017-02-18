class FoodItem < ApplicationRecord
  searchkick
  belongs_to :section
  validates :name, :price, presence: true
  has_many :orders
  def image_url_or_default
    image_url.presence || "http://loremflickr.com/320/245/#{name.gsub(' ',' ')}"
  end

  def search_data
    {
        name: name
    }
  end
end
