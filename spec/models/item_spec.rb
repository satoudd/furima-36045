require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
end

describe 'itemの保存' do
  context "itemが保存できる場合" do
    it 'product_nameとimage、userとprices、product_descriptionとcategory_id、product_idとshippingcharge_id、days_to_ship_idとshipping_area_idが存在すれば登録できる' do
     expect(@item).to be_valid
    end
  end
  context "itemが保存できない場合" do
    it "product_nameがないとitemは保存できない" do
      @item.product_name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Product name can't be blank")
    end     
    it "imageがないとitemは保存できない" do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end     
    it "ユーザーが紐付いていないとitemは保存できない" do
      @item.user = nil
      @item.valid?
      expect(@item.errors.full_messages).to include('User must exist')
    end
    it "product_descriptionがないとitemは保存できない" do
      @item.product_description = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Product description can't be blank")
    end
    it "category_idがないとitemは保存できない" do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank")
    end
    it "product_idがないとitemは保存できない" do
      @item.product_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Product can't be blank")
    end
    it "shippingcharge_idがないとitemは保存できない" do
      @item.shippingcharge_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Shippingcharge can't be blank")
    end
    it "shipping_area_idがないとitemは保存できない" do
      @item.shipping_area_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping area can't be blank")
    end
    it "days_to_ship_idがないとitemは保存できない" do
      @item.days_to_ship_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Days to ship can't be blank")
    end
    it "pricesがないとitemは保存できない" do
      @item.prices = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Prices can't be blank")
    end
    it 'pricesは数値以外の文字をを使用するとitemは登録できない' do
      @item.prices = 'ひ'
      @item.valid?
      expect(@item.errors.full_messages).to include("Prices is not a number")
    end
  end
 end
end
