class Item <  ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image
  belongs_to :user
  belongs_to :category
  belongs_to :product
  belongs_to :shippingcharge
  belongs_to :days_to_ship
  validates :image, presence: true
  validates :product_name, presence: true
  validates :prices, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}

  validates :prices, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 },
                  format: { with: /\A[0-9]+\z/ }
  validates :product_description, presence: true
  validates :product_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}

  validates :shippingcharge_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}

  validates :shipping_area_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :days_to_ship_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
end
