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
  end
end
