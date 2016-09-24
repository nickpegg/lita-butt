require 'spec_helper'

describe Lita::Handlers::Butt, lita_handler: true do
  subject { described_class.new(robot) }

  it { is_expected.to route('butt').to(:butt) }
  it { is_expected.to route('btt').to(:butt) }
  it { is_expected.to route('buuuuuutt').to(:butt) }

  describe '#butt' do
    it 'replies with a butt' do
      send_message 'butt'
      expect(replies.last).to eq '(_)_)'
    end

    it 'replies with a big ol butt' do
      send_message 'buuuuuuuuuutt'
      expect(replies.last).to eq '(__________)__________)'
    end

    it 'replies with a small butt' do
      send_message 'btt'
      expect(replies.last).to eq '())'
    end

    it 'replies with multiple butts' do
      send_message 'butts'
      expect(replies.last).to eq '(_)_) (_)_)'
    end

    it 'replies with multiple big butts' do
      send_message 'buuuuutts'
      expect(replies.last).to eq '(_____)_____) (_____)_____)'
    end
  end
end
