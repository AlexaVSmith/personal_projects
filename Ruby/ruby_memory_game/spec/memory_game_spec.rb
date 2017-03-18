require "./memory_game"
require "stringio"

describe MemoryGame do
	let(:memory_game) { MemoryGame.new }

	describe "#questions" do
		it "returns 0" do
			expect(memory_game.questions).to eq 0
		end
	end

	describe "#enter_question" do

		def user_inputs(string)
			$stdin = StringIO.new(string)
		end

		it "adds a question" do
			user_inputs "What day is it?"
			memory_game.capture_answer
			expect($stdout.string).to match "What day is it?"
			expect(memory_game.questions).to eq 1
		end

		it "add multiple questions" do
			memory_game.enter_question('what day is it today?', 'Wednesday')
			memory_game.enter_question('what\'s the date today?', '28/9/16')
			expect(memory_game.questions).to eq 2
		end
	end

	describe "#current_question" do
		it "displays question" do
			memory_game.enter_question('what is the capital of France?', 'Paris')
			expect(memory_game.current_question).to eq 'what is the capital of France?'
		end
	end

	describe "#answer_question" do
		before do
			memory_game.enter_question('what is the capital of france?', 'Paris')
			memory_game.current_question
		end

		it "returns true if the answer is correct" do
			expect(memory_game.answer_question('Paris')).to eq true
		end

		it "returns false if the answer is incorrect" do
			expect(memory_game.answer_question('Pari')).to eq false
		end

		it "it's not case sensitive" do
			expect(memory_game.answer_question('paris')).to eq true
		end
	end

	describe "#menu options" do
		it "displays welcome message" do
			expect{memory_game.welcome}.to output("Welcome to the game!\n").to_stdout
		end

		it "asks whether the player wants to enter a new question" do
			expect{memory_game.option_to_enter_new_question}.to output("Enter '1' to add to the quiz\nEnter '2' to take the quiz >\n").to_stdout
		end
	end

	describe "#capture" do

		def user_inputs(string)
			$stdin = StringIO.new(string)
		end

		def app_output
			$stdout = StringIO.new
		end

		it "captures 1" do
			app_output
			user_inputs "1"
			expect(memory_game.capture_answer).to be == "1"
			expect($stdout.string).to match "Great, please enter your question here >"
		end

		it "captures 2" do
			user_inputs "2"
			expect(memory_game.capture_answer).to be == "2"
			expect($stdout.string).to match "Cool, let me test you then!"
		end

		it "won't allow random words" do
			app_output
			user_inputs "dsoghpqghgeqp"
			memory_game.capture_answer
			expect($stdout.string).to match "I don't know what you mean, please try again"
		end
	end

	describe "#prompt" do
		# prompt user question
		# user enters question
		
		it "prompts user to enter question" do
			expect { memory_game.prompt }.to output("Please enter a question\n").to_stdout
		end
	end

	describe "#collects_question" do

		def user_inputs(string)
			$stdin = StringIO.new(string)
		end
	end
end
# store question
		# prompt user for answer
		# user enters answer
		# store answer
		# store as QuestionAnswerPair
