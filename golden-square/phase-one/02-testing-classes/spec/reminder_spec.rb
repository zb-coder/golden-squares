require 'reminder'

describe Reminder do
    it 'reminds the user to do a task' do
        reminder = Reminder.new("Kay")
        reminder.remind_me_to("Walk the dog")
        result = reminder.remind()
        expect(result).to eq "Walk the dog, Kay!"
    end
end

# Our example involves calling a number of 
# methods that exercise the intended behaviour 
# of the class.