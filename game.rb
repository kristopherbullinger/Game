class Game
  def initialize
    @game_score = 0
    @attempt_counter = 0
  end

  def question_1
    puts "What is the color of the sun?"
    sun_color = gets.chomp.downcase
    if (@attempt_counter <= 2)
      if (sun_color == "white")
        @game_score += 1
        @attempt_counter = 0
        puts "Correct! Now for a harder one."
        return
      else
        @attempt_counter += 1
        puts (@attempt_counter == 1) ? "Try again." : "Come on..."
        question_1
      end
    else
      puts "Read a damn book! I'm done playing."
      return
    end
  end

  def question_2
    puts "How many legs does a crocodile have?"
    croc_legs = gets.chomp.to_i

    if (@game_score == 1 && croc_legs == 4)
      puts "#{$name} is a biology expert! Just a few more questions..."
      @game_score += 1
    else
      puts "Seriously?"
      return
    end
  end

  def play
    question_1
  end

end
