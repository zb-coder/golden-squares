require 'todo_list.rb'

describe TodoList do
    context 'initially' do
        it 'is empty incomplete array' do
            todo_list = TodoList.new
            expect(todo_list.incomplete).to eq []
        end

        it 'is empty complete array' do
            todo_list = TodoList.new
            expect(todo_list.complete).to eq []
        end
    end
end