require 'rails_helper'


RSpec.describe Product, type: :model do
  describe "Validations" do
    
    it "should have a name, price, quanity and category" do
      @category = Category.new
      @category.name = "Pets"
      @category.save
      @product = Product.new
      @product.name = "French Bulldog"
      @product.description = "Short dogs with ears like bats"
      @product.price_cents = 100000
      @product.quantity = 1
      @product.category_id = @category[:id]
      @product.save
      expect(@product.name).to be_present
      expect(@product.price).to be_present
      expect(@product.quantity).to be_present
      expect(@product.category).to be_present
    end
 
    it "should throw an error when name is not entered" do
      @category = Category.new
      @category.name = "Pets"
      @category.save
      @product = Product.new
      @product.description = "Short dogs with ears like bats"
      @product.price_cents = 100000
      @product.quantity = 1
      @product.category_id = @category[:id]
      @product.save
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "should throw an error when price is not entered" do
      @category = Category.new
      @category.name = "Pets"
      @category.save
      @product = Product.new
      @product.name = "French Bulldog"
      @product.description = "Short dogs with ears like bats"
      @product.quantity = 1
      @product.category_id = @category[:id]
      @product.save
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "should throw an error when quantity is not entered" do
      @category = Category.new
      @category.name = "Pets"
      @category.save
      @product = Product.new
      @product.name = "French Bulldog"
      @product.description = "Short dogs with ears like bats"
      @product.price_cents = 100000
      @product.category_id = @category[:id]
      @product.save
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end  
    
    it "should throw an error when category is not entered" do
      @product = Product.new
      @product.name = "French Bulldog"
      @product.description = "Short dogs with ears like bats"
      @product.price_cents = 100000
      @product.quantity = 1
      @product.save
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end
