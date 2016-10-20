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

	def capture_answer
		input = $stdin.gets.chomp
		if input == "dsoghpqghgeqp"
			$stdout.puts "error"
		end
		input
	end
end

QuestionAnswerPair = Struct.new(:question, :answer)

game = MemoryGame.new
game.menu
