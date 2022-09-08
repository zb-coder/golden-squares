require 'task'

describe Task do
    it 'constructs' do
        task = Task.new("Walk the dog")
        expect(task.title).to eq "Walk the dog"
    end

    it 'initially is not complete' do
        task = Task.new("Walk the dog")
        expect(task.complete?).to eq false
    end

    it 'initially is not complete' do
        task = Task.new("Walk the dog")
        task.mark_complete
        expect(task.complete?).to eq true
    end
end
