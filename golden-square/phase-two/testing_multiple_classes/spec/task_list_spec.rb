require 'task_list'

describe TaskList do
    context 'initially' do
        it 'has an empty list of tasks' do
            task_list = TaskList.new
            expect(task_list.all).to eq []
        end

        it 'has an empty list of complete tasks' do
            task_list = TaskList.new
            expect(task_list.complete).to eq []
        end
    end
end