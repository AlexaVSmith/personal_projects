class MemoryGame
	def initialize
		@questions = []
	end

	def questions
		@questions.length
	end

	def enter_question(question, answer)
		@questions << QuestionAnswerPair.new(question, answer)
	end

	def current_question
		@current_question = @questions.pop
		@current_question.question
	end

	def answer_question(answer)
		@current_question.answer.downcase == answer.downcase
	end

	def menu
		print "Welcome to the game!\n"
	end
	
  	def choose
    	puts "Do you want to contribute to the quiz?\nEither answer 'Y' or 'N'\n>"
    	@contribute = gets.chomp
    	puts "Do you want to take the quiz?\nEither answer 'Y' or 'N'\n>"
    	@take_quiz = gets.chomp
  	end
end

QuestionAnswerPair = Struct.new(:question, :answer)

game = MemoryGame.new
game.menu
