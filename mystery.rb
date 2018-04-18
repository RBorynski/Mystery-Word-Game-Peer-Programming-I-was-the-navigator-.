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
    @indices_chosen = []
    game_start()
    guess_letter()
    game_over()
    game_win()
  end
    def game_start
      puts "What is the word? Player 2 look away..."
      @word = gets.chomp
      word_length = @word.length
      word_length.times do
        @reveal_word = @reveal_word + "_"
      end
      puts @reveal_word
    end
  def guess_letter
    while @lives > 0
      puts "Guess a letter:"
      letter = gets.chomp
      if @word.include? letter
        letter_index = @word.index(letter)
        if !(@indices_chosen.include?letter_index)
        @indices_chosen<<letter_index
        @reveal_word[letter_index] = letter
        puts @reveal_word
      else
        puts "Oh no! The word already has that letter"
        @lives -= 1
      end
        #show letter where input is correct, other letters " "
      else
        puts "Oh no! The word doesn't include that letter!"
        @lives -= 1
      end
      puts "You have #{@lives} lives left"
    end
  end
    def game_win
      if @word = @reveal_word
      puts "You won! The word is #{@word}"
    end
    end
    def game_over
      if @lives < 1
        puts "Game Over"
    end
  end
end

MysteryWordGame.new()
