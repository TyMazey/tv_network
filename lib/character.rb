class Character

  attr_reader :name,
              :actor,
              :salary

  def initialize(information)
    @name = information[:name]
    @actor = information[:actor]
    @salary = information[:salary]
  end
end
