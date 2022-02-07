require 'rails_helper'

RSpec.describe Mainnote, type: :model do
  it "titleがない場合は登録できない" do
    mainnote = build(:mainnote, title: nil)
    mainnote.valid?
    expect(mainnote.errors[:title]).to include("を入力してください")
  end

  it "targetがない場合は登録できない" do
    mainnote = build(:mainnote, target: nil)
    mainnote.valid?
    expect(mainnote.errors[:target]).to include("を入力してください")
  end

  it "categoryがない場合は登録できない" do
    mainnote = build(:mainnote, category: nil)
    mainnote.valid?
    expect(mainnote.errors[:category]).to include("を入力してください")
  end

end
