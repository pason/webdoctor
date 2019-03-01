require_relative 'helpers/presenter'

class WeeklySchedule
  include Helpers::Presenter

  attr_accessor :weekly_data

  def initialize(parser:)
    @weekly_data = parser.call
  end

  def find_doctor(day_name, format: nil)
    display_as weekly_data[day_name.downcase.to_sym], format
  end
end
