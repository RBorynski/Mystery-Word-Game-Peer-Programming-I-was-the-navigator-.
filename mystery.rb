require "pry"

# class Word
#   attr_accessor :word
#   def initialize (word)
#     @word = word
#   end
#   def make_word
#     puts "What is the word? Player 2 look away..."
#     word = gets
#   end
# end

class MysteryWordGame
  def initialize
    @lives = 3
    @word = ""
    @reveal_word = ""
    game_start()
    guess_letter()
    game_over()
  end
    def game_start
      puts "What is the word? Player 2 look away..."
      @word = gets.chomp
    end
  def guess_letter
    while @lives > 0
      puts "Guess a letter:"
      letter = gets.chomp
      if @word.include? letter
        word_so_far()
        #show letter where input is correct, other letters " "
      else
        puts "Oh no! The word doesn't include that letter!"
        @lives -= 1
      end
      puts "You have #{@lives} lives left"
    end
  end
    def word_so_far
      letter_index = @word.index(letter)
      puts @reveal_word
    end
    def game_over
      if @lives < 1
        puts "Game Over"
    end
  end
end

MysteryWordGame.new()
