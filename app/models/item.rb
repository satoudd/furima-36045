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
  validates :category_id, presence: true
  validates :prices, presence: true
  validates :product_description, presence: true
  validates :product_id, presence: true
  validates :shippingcharge_id, presence: true
  validates :shipping_area_id, presence: true
  validates :days_to_ship_id, presence: true
  PRICES_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
validates_format_of :prices, with: PRICES_REGEX, message: 'には英字と数字の両方を含めて設定してください'
end
