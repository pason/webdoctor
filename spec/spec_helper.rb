require_relative '../lib/csv/parser'
require_relative '../lib/doctor'
require_relative '../lib/weekly_schedule'


RSpec.configure do |config|
  config.before(:all) do
    @log_file_path = 'samples/doctors.csv'
  end
end
