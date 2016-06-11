# your code goes here
class Person
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def happiness=(happiness_index)
    if happiness_index > 10 
      @happiness = 10
    elsif happiness_index < 1
      @happiness = 0
    else
      @happiness = happiness_index 
    end
  end

  def hygiene=(hygiene_index)
    if hygiene_index > 10 
      @hygiene = 10
    elsif hygiene_index < 1
      @hygiene = 0
    else
      @hygiene = hygiene_index 
    end
  end

  def happy? 
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
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
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "weather"
      person.happiness += 1
      self.happiness += 1
      "blah blah sun blah rain"
    elsif topic == 'politics'
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "programming"
      "blah blah blah blah blah"
      
    end
  end

end