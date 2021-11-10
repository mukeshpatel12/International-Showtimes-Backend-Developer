require 'rails_helper'

RSpec.describe Job, type: :model do

  context 'validation' do
    it 'job id should be present' do
      data = Job.new(job: nil, state: 'done', priority: nil).save
      expect(data).to eq(false)
    end

    it 'state should be present' do
      data = Job.new(job: "2222222", state: nil, priority: nil).save
      expect(data).to eq(false)
    end
  end
end