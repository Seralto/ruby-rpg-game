require './spec/spec_helper'

describe 'Hero' do
  let(:subject) { Hero.new('Odin') }

  context 'when a hero is created' do
    it 'has valid attributes' do
      expect(subject.name).to eq('Odin')
      expect(subject.hp).to eq(30)
      expect(subject.strength).to eq(6)
      expect(subject.exp).to eq(0)
      expect(subject.level).to eq(1)
    end

    it 'can attack' do
      expect(subject.respond_to?('attack')).to be_truthy
    end
  end
end
