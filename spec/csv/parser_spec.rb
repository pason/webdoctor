require 'spec_helper'

describe Csv::Parser do
  before :all do
  end

  it 'raise ArgumentError if file not passed' do
    expect { Csv::Parser.new(file: '') }.to raise_error(ArgumentError)
  end

  it 'parses csv file' do
    parsed = Csv::Parser.new(file: @log_file_path).call

    expect(parsed[:monday].map(&:to_s)).to match_array(['Dr. Kim', 'Dr. May'])
    expect(parsed[:tuesday].map(&:to_s)).to match_array(['Dr. Adamski', 'Dr. May'])
    expect(parsed[:wednesday].map(&:to_s)).to match_array(['Dr. Kim', 'Dr. Adamski'])
    expect(parsed[:thursday].map(&:to_s)).to match_array(['Dr. Adamski'])
    expect(parsed[:friday].map(&:to_s)).to match_array([])
    expect(parsed[:saturday].map(&:to_s)).to match_array(['Dr. Kim','Dr. Adamski','Dr. May'])
    expect(parsed[:sunday].map(&:to_s)).to match_array(['Dr. Kim', 'Dr. May'])
  end
end
