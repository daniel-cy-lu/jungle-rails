require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do 
    it "should throw an error if password is blank" do 
      @user = User.new
      @user.save
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    it "should throw an error if name is blank" do 
      @user = User.new
      @user.save
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end
    it "should throw an error if password and password_confirmation do not match" do
      @user = User.new
      @user.password = "password"
      @user.password_confirmation = "basswort"
      @user.save
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
    it "should throw an error if the email already exsits)" do 
      @user1 = User.new
      @user1.email = "a@b.com    "
      @user1.name = "danny"
      @user1.password = "password"
      @user1.password_confirmation = "password"
      @user1.downcase_strip_email
      @user1.save

      @user2 = User.new
      @user2.email = "A@B.com"
      @user2.name = "danny"
      @user2.password = "password"
      @user2.password_confirmation = "password"
      @user2.downcase_strip_email
      @user2.save

      expect(@user2.errors.full_messages).to include("Email has already been taken")
    end
    it "should login a user even if there are spaces before, trailing the email" do 
      @user1 = User.new
      @user1.email = "    mary@tommy.com    "
      @user1.name = "mary"
      @user1.password = "password"
      @user1.password_confirmation = "password"
      @user1.downcase_strip_email
      @user1.save

      expect(User.authenticate_by_email_password(@user1.email, @user1.password).email).to eql("mary@tommy.com")
      
    end
    it "should throw an error if password length < 8" do
      @user = User.new
      @user.password = "0000"
      @user.save
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 8 characters)")
    end

  end
  describe "authenticate_by_email_password" do
    it "should return true if user and password match" do
      @user = User.create(
        email: "apple@banana.com",
        name: "danny",
        password: "password",
        password_confirmation: "password"
      )
      expect(User.authenticate_by_email_password(@user.email, @user.password)).to eql(@user)
    end
  end
end
