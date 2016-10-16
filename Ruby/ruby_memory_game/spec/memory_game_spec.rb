require "./memory_game"

describe MemoryGame do
	let(:memory_game) { MemoryGame.new }

	describe "#questions" do
		it "returns 0" do

			expect(memory_game.questions).to eq 0
		end
	end

	describe "#enter_question" do
		it "adds a question" do
			memory_game.enter_question('what is the capital of france?', 'Paris')

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
	
# http://stackoverflow.com/questions/29323771/rspec-test-for-a-method-that-contains-gets-chomp
	describe "#choose" do
		before do 
			io_obj = double
			expect(subject)
				.to receive(:gets)
				.and_return(io_obj)
				.twice
			expect(io_obj)
				.to receive(:chomp)
				.and_return(:contribute)
			expect(io_obj)
				.to receive(:chomp)
				.and_return(:take_quiz)
		end

		it 'asks whether the user wants to @contribute or @take_quiz according to user\'s input' do
			subject.choose

			expect(memory_game.subject.instance_variable_get(:@contribute)).to eq :contribute
			expect(memory_game.subject.instance_variable_get(:@take_quiz)).to eq :take_quiz
		end
	end
end
	