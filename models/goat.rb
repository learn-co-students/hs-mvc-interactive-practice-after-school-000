class Goat
  GOATS = []


  def initialize(name_in, age_in)
    GOATS << self
    @name_str = name_in
    @age_int = age_in
    @pokes_int = 0
    @milk_in_udders_float = 1.0
    @moody_bool = false
  end


  def age
    return @age_int
  end
  def age=(age_in)
    @age_int = age_in
  end

  def name
    return @name_str
  end
  def name=(name_in)
    @name_str = name_in
  end

  def pokes
    return @pokes_int
  end
  def pokes=(pokes_in)
    @pokes_int = pokes_in
  end

  def milk_in_udders
    return @milk_in_udders_float
  end
  def milk_in_udders=(milk_in_udders_in)
    @milk_in_udders_float = milk_in_udders_in
  end

  def moody
    return @moody_bool
  end
  def moody=(moody_in)
    @moody_bool = moody_in
  end


  def poke
    @pokes_int += 1
    if @pokes_int < 3
      puts "baa"
    else
      puts "BAAAAAAAAA GO AWAY"
      @moody_bool = true
    end
  end

  def milk
    @milk_in_udders_float -= (@milk_in_udders_float * 0.5)
    puts "You have milked #{@milk_in_udders_float * 50} ml of milk"
  end

  def feed(food_in)
    if food_in.downcase == "grass"
      @milk_in_udders_float += (@milk_in_udders_float * 0.3)
    elsif food_in.downcase == "muesli"
      @milk_in_udders_float += (@milk_in_udders_float * 0.4)
    elsif food_in.downcase == "tofurkey"
      @milk_in_udders_float += (@milk_in_udders_float * 0.25)
    else
      @milk_in_udders_float -= (@milk_in_udders_float * 0.1)
      puts "BAAAAA"
    end
  end


  def self.all
    return GOATS
  end
end
