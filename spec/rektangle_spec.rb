require 'spec_helper'

RSpec.describe './rektangle' do
  let(:output) { %x(#{command}) }
  describe 'mandatory arguments sign' do
    context 'when both argument are zero' do
      let(:command) { 'ruby ./rektangle.rb 0 0' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when first argument = 0' do
      let(:command) { 'ruby ./rektangle.rb 0 3' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when second argument = 0' do
      let(:command) { 'ruby ./rektangle.rb 3 0' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when both argument are negative' do
      let(:command) { 'ruby ./rektangle.rb -1 -1' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when first argument = -1' do
      let(:command) { 'ruby ./rektangle.rb -1 3' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when second argument = -1' do
      let(:command) { 'ruby ./rektangle.rb 3 -1' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when height is over 9000' do
      let(:command) { 'ruby ./rektangle.rb 3 9001' }
      it { expect(output).to include('ArgumentTooBigError') }
    end
    context 'when width is over 9000' do
      let(:command) { 'ruby ./rektangle.rb 9001 3' }
      it { expect(output).to include('ArgumentTooBigError') }
    end
    context 'when 3 shapes are given' do
      let(:command) { 'ruby ./rektangle.rb 4 5 o o o o' }
      it { expect(output).to include('ShapesNumberIncorrectError') }
    end
    context 'when shapes are more one cractere' do
      let(:command) { 'ruby ./rektangle.rb 4 5 56' }
      it { expect(output).to include('ShapeLengthIncorrectError') }
    end
    context 'when -h option is given' do
      let(:command) { 'ruby ./rektangle.rb -h' }
      it { expect(output).to include('Help Menu') }
      it { expect(output).to include('Rektangle by Seybol') }
    end
    context 'when --help option is given' do
      let(:command) { 'ruby ./rektangle.rb --help' }
      it { expect(output).to include('Help Menu') }
      it { expect(output).to include('Rektangle by Seybol') }
    end
    context 'when correct value is given' do
      let(:command) { 'ruby ./rektangle.rb 5 4 B E E R S' }
      let(:expected) do
        expected = <<~STRING
          BSSSE
          S   S
          S   S
          RSSSE
        STRING
        expected
      end
      it { expect(output).to include(expected) }
    end
  end
end
