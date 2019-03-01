module Helpers
  module Presenter
    def display_as data, format
      case format
      when :text
        data.map { |row| row.to_s + ' is available'}
      else
        data
      end
    end
  end
end