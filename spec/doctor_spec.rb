require 'spec_helper'

describe Doctor do
  describe 'attributes' do
    it 'sets name' do
      expect(Doctor.new(full_name: 'Dr. Kim').full_name).to eq('Dr. Kim')
    end

     it 'converts to string' do
      expect(Doctor.new(full_name: 'Dr. Kim').to_s).to eq('Dr. Kim')
    end
  end
end