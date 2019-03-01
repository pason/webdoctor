require 'csv'

module Csv
  class Parser
    HEADER_WEEK_DAYS = %i[monday tuesday wednesday thursday friday saturday sunday].freeze
    AVABILITY_MARKER = 'ON'.freeze

    attr_reader :file, :avability_hash

    def initialize(file:)
      raise ArgumentError unless File.exist?(file)
      @file = file
      @avability_hash = {}
      HEADER_WEEK_DAYS.each { |week_day| @avability_hash[week_day] = [] }
    end

    def call
      generate_avability_hash
    end

    private

    def generate_avability_hash
      CSV.foreach(file, headers: true, header_converters: :symbol) do |row|
        HEADER_WEEK_DAYS.each do |week_day|
          avability_hash[week_day] << Doctor.new(full_name: row[:doctor_name]) if row[week_day] == AVABILITY_MARKER
        end
      end
      avability_hash
    end
  end
end
