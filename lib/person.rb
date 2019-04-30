require 'pry'

class Person
  attr_reader :name
  attr_accessor :happiness, :hygiene, :bank

  def initialize(name)
    @name = name
    @bank = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
    @bank
  end

  def bank_account=(amount)
    bank_account
  end

  def happiness
    @happiness.clamp(0,10)
  end

  def hygiene
    @hygiene.clamp(0,10)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank += salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

#binding.pry
