require 'present'

describe Present do
    it 'wraps and unwraps a value' do
        present = Present.new
        present.wrap(6)
        expect(present.unwrap).to eq 6
    end

    it 'fails if we unwrap without wrapping first' do
        present = Present.new
        expect{ present.unwrap }.to raise_error 'No contents have been wrapped.' 
    end

    it 'fails if we wrap if we have already wrapped' do
        present = Present.new
        present.wrap(5)
        expect { present.wrap(1) }.to raise_error 'A contents has already been wrapped.'
        expect(present.unwrap).to eq 5
    end    
end