require 'rails_helper'

RSpec.describe Movie, type: :model do

  context 'validation test' do
    it 'title should be present' do
      data = Movie.new(title: nil).save
      expect(data).to eq(false)
    end

  end
end