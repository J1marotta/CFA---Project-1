=begin
 PROJECT 1 Thursday 10th August, Oliva, Carmen, Nathan, James
 Group project to impress Trent in what ever way possible.
 like a good old fashion game of is this a pixelated picture of trent or not?
=end

system("clear")

require 'artii' #This is one of the gems, ASCII text
require 'catpix'

=begin
The first class is the introduction to the program.
It will greet the user and welcome to the game.
=end
class Introduction

  #initialise our scoreboard array
  def initialize
    @difficulty = difficulty
  end

  attr_accessor :difficulty

  # main method for introduction and visual
  def begin
    system("clear")
    a = Artii::Base.new(:font => 'slant')
    puts
    puts
    puts a.asciify('                   Welcome!')
    puts
    puts a.asciify('                 Trent or not!')
    puts
    puts "                               By\n\n"
    puts "                 James, Carmen, Nathan, and Olivia\n\n\n\n"
    puts "                    Hello , what is your  name?"

    # accepts input and makes a new player class object with their name
    # and a default score of 0.
    print"                              "
    @user = Player.new(gets.chomp, 0)
    @user.randomise
  end

end

class Player

  # our player class has a name and a basic score
  def initialize(name, score=0)
    @name = name
    @score = score
  end

  #getters and setters
  attr_accessor :name, :score

  def randomise
    # set our trent variable to true.
    @is_trent = true

    # set up our arrays of our pictures two arrays for each difficulty.
    @easy_trent = [
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy1small.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy2.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy3.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy4.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy5.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy6.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy7.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy8.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy9.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy10.jpg")
    ]
    @easy_not_trent = [
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy1.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy2.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy3.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy4.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy5.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy6.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy7.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy8.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy9.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy10.jpg")
    ]
    @medium_trent = [
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed1.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed2.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed3.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed4.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed5.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed6.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed7.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed8.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed9.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/medium/trentmed10.jpg")
    ]
    @medium_not_trent = [
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed1.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed2.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed3.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed4.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed5.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed6.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed7.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed8.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed9.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/medium/ntmed10.jpg")
    ]
    @hard_trent = [
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard1.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard2.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard3.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard4.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard5.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard6.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard7.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard8.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard9.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/hard/trenthard10.jpg"),
    ]
    @hard_not_trent = [
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard1.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard2.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard3.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard4.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard5.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard7.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard8.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard9.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/hard/nthard10.jpg")
    ]

    #start a loop to get user input for Difficutly and to make sure its right
    loop do
      puts "Would you like to play on [easy], [medium], or [hard] mode?"
      @difficulty = gets.chomp.downcase
      @numGames = 5

      # save their input as
      case @difficulty
        when "easy", "e"
          @difficulty = "easy"
          @numGames.times do
             draw
           end
          break
        when "medium", "m"
          @difficulty = "medium"
          @numGames.times do
             draw
           end
          break
        when "hard" , "h"
          @difficulty = "hard"
          @numGames.times do
             draw
           end
          break
        else
          "Error, invalid input, please choose Easy, Medium or Hard"
      end

  end
end



def draw
  do
     # set variable /to see if it is trent to true or false.
    if rand(1..100) > 50
      @is_trent = true
    else
      @is_trent = false
    end

    case @difficulty
      when "easy"
        if @is_trent == true
          @mainPic = @easy_trent.sample
          break
        else
          @mainPic = @easy_not_trent.sample
          break
        end

      when "medium"
        if @is_trent == true
          @mainPic = @medium_trent.sample
          break
        else
          @mainPic = @medium_not_trent.sample
          break
        end

      when "hard"
        if @is_trent == true
          @mainPic = @hard_trent.sample
          break
        else
          @mainPic = @hard_not_trent.sample
          break
        end
      else
      "Error, invalid input, please choose Easy, Medium or Hard"
    end
  end


  # use the catpix gem, to print to terminal, this gem is awesome,
  # but terrible to get working.

  Catpix::print_image @mainPic,
    :limit_x => 0.7,    # this scales the horiztonal size
    :limit_y => 0.7,    # this scales the vertical size
    :center_x => true,  # this centres horiztonally
    :center_y => true,  # centre vertically
    #:bg => "white",    # set the background colour (default nil)
    :bg_fill => false,  # set if you want to fill the background
    :resolution => "low"  # set the default resolution.

    answer_checker
    # puts "is it trent?"
    # answer = gets.chomp
  end
end

# this is our program to check their answer and update their score.
def answer_checker
  print "                              Is it Trent?"
  answer = gets.chomp

  # this is the checking function, compare answer to is_trent bool
  case answer

    # they get it Right, say yes and it is , or say no and it isnt.
  when "yes" && @is_trent == true
    user.score += 1
    print "                      Correct!          #{user.score}/#{numGames}"

  when "no"  && @is_trent == false
    user.score += 1
    print "                      Correct!          #{user.score}/#{numGames}"

  when "yes" && @is_trent == false
    print "                      That's Not Trent!  #{user.score}/#{numGames}"

  when "no" && @is_trent == true
    print "                      That's Not Trent!  #{user.score}/#{numGames}a"


end



intro = Introduction.new
intro.begin
