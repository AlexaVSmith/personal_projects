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
		print 'Welcome to the game!'
	end

	def take_the_quiz
		print 'Do you want to contribute to the quiz?'
	end
end

QuestionAnswerPair = Struct.new(:question, :answer)

game = MemoryGame.new
game.menu
game.take_the_quiz