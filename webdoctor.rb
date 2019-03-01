require_relative 'lib/csv/parser'
require_relative 'lib/doctor'
require_relative 'lib/weekly_schedule'

parser = Csv::Parser.new(file: 'samples/doctors.csv')
weekly_schedule = WeeklySchedule.new(parser: parser)


puts weekly_schedule.find_doctor('Tuesday', format: :text)