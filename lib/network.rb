class Network

  attr_reader :name,
              :shows,
              :network_characters

  def initialize(name)
    @name = name
    @shows = []
    @network_characters = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def network_characters
    @shows.each do |show|
      show.characters.each do |character|
        @network_characters.push(character)
      end
    end
  end

  def highes_paid_actor
    network_characters
    salarys = @network_characters.sort_by do |character|
      character.salary
    end
    salarys[-1].actor
  end

  def payroll
    network_characters
    payrolls = {}
    @network_characters.each do |character|
      payrolls[character.actor] = character.salary
    end
    payrolls
  end
end
