require 'spec_helper'

describe WeeklySchedule do
  describe 'business logic' do
    it 'returns valid value for find_doctor' do
      parser = Csv::Parser.new(file: @log_file_path)
      weekly_schedule = WeeklySchedule.new(parser: parser)

      expect(weekly_schedule.find_doctor('Monday').map(&:to_s)).to match_array(['Dr. Kim', 'Dr. May'])
      expect(weekly_schedule.find_doctor('Tuesday').map(&:to_s)).to match_array(['Dr. Adamski', 'Dr. May'])
      expect(weekly_schedule.find_doctor('Wednesday').map(&:to_s)).to match_array(['Dr. Kim', 'Dr. Adamski'])
      expect(weekly_schedule.find_doctor('Thursday').map(&:to_s)).to match_array(['Dr. Adamski'])
      expect(weekly_schedule.find_doctor('Friday').map(&:to_s)).to match_array([])
      expect(weekly_schedule.find_doctor('Saturday').map(&:to_s)).to match_array(['Dr. Kim','Dr. Adamski','Dr. May'])
      expect(weekly_schedule.find_doctor('Sunday').map(&:to_s)).to match_array(['Dr. Kim', 'Dr. May'])
    end
  end
end