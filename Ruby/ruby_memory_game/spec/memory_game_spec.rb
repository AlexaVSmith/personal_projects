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
			memory_game.capture
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

	describe "#menu" do

		it "displays welcome message" do
			expect { memory_game.menu }.to output("Welcome to the game!\n").to_stdout
		end
	end

	describe "#capture" do

		def user_inputs(string)
			$stdin = StringIO.new(string)
		end

		it "captures yes" do
			user_inputs "yes"
			memory_game.capture
			expect(memory_game.input).to be == "yes"
		end

		it "captures no" do
			user_inputs "no"
			memory_game.capture
			expect(memory_game.input).to be == "no"
		end

		def app_output
			$stdout = StringIO.new
		end

		it "won't allow random words" do
			app_output
			user_inputs "dsoghpqghgeqp"
			memory_game.capture
			expect($stdout.string).to match "error"
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
