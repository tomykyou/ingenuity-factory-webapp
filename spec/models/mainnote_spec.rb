require 'rails_helper'

RSpec.describe Mainnote, type: :model do
  before do 
    @mainnote = create(:mainnote)
  end

  describe 'バリデーション' do
    it 'titleが空だとNG' do
      @mainnote.title = ''
      expect(@mainnote.valid?).to eq(false)
    end

    it 'textが空だとNG' do
      @mainnote.text = ''
      expect(@mainnote.valid?).to eq(false)
    end

    it 'targetが空だとNG' do
      @mainnote.target = ''
      expect(@mainnote.valid?).to eq(false)
    end
  end  
end
