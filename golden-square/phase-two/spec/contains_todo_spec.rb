require 'contains_todo'

describe 'contains_todo method' do
    context 'given an empty string' do
        it 'fails' do
            expect{ contains_todo("") }.to raise_error "Not a task"
        end
    end

    context 'given a string that contains #TODO' do
        it 'returns true' do
            expect(contains_todo("#TODO")).to eq true
        end
    end

    context 'given a string that contains TODO instead of #TODO' do
        it 'returns false' do
            expect(contains_todo("TODO")).to eq false
        end
    end

    context 'given a string that contains # instead of #TODO' do
        it 'returns false' do
            expect(contains_todo("#")).to eq false
        end
    end

    context 'given a string that contains # todo instead of #TODO' do
        it 'returns false' do
            expect(contains_todo("# todo")).to eq false
        end
    end

    context 'given a string that contains # TODO instead of #TODO' do
        it 'returns false' do
            expect(contains_todo("# TODO")).to eq false
        end
    end
end