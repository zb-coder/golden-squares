require 'todo_list.rb'

describe TodoList do
    context 'initially' do
        it 'is empty' do
            todo_list = TodoList.new
            expect(todo_list.incomplete).to eq []
        end
    end
end