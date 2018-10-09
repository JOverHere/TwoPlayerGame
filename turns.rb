module MathGame
  class Turn

    def initialize (player)
      puts '----- NEW TURN -----'
      current_question = Question.new
      puts "#{player.name}: #{current_question.question}"
      @answer = gets.chomp.to_i
      if current_question.correct? @answer
        puts "#{player.name}: CORRECT!"
      else
        player.lose_life
        puts "#{player.name}: WRONG!"
      end
    end

  end
end