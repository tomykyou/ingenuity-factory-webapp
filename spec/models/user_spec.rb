require 'rails_helper'

describe User do
  describe '#create' do
    it "usernameがない場合は登録できない" do
      user = build(:user, username: nil)
      user.valid?
      expect(user.errors[:username]).to include("を入力してください")
    end

    it "emailがない場合は登録できない" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "passwordがない場合は登録できない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "password_confirmationがない場合は登録できない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
  end
end
