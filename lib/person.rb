require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account=25, hygiene=8, happiness=8)
    @name = name
    @bank_account = bank_account
    @hygiene = hygiene
    @happiness = happiness
  end

  def happiness=(happiness)
    if happiness > 10
      happiness = 10
    end
    if happiness < 0
      happiness = 0
    end
    @happiness = happiness
  end

  def hygiene=(hygiene)
    if hygiene > 10
      hygiene = 10
    end

    if hygiene < 0
      hygiene = 0
    end
    @hygiene = hygiene
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
     "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+=4)

     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-=3)
    self.happiness=(@happiness+=2)
      "♪ another one bites the dust ♫"
  end

  #accept another instance of Person class
  #caller's and callee's happiness += 3
  #caller should say "Hi #{callee}!, it's #{caller}. How are you?"

  def call_friend(friend)
    self.happiness=(@happiness+=3)
    friend.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(@happiness-=2)
      person.happiness-=2
       "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness+=1)
      person.happiness+=1
       "blah blah sun blah rain"
    else
       "blah blah blah blah blah"
    end
   end

end
