class Doctor
  attr_accessor :full_name

  def initialize(full_name:)
    @full_name = full_name
  end

  def to_s
    full_name
  end
end
