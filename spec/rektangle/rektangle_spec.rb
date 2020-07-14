require 'spec_helper'

RSpec.describe Rektangle do
  describe '.draw' do
    context 'when height and width are superior to 2' do
      it 'draws a 5x4 rectangle' do
        rectangle = Rektangle.new(5,4)
        output = rectangle.draw
        expected = <<~STRING
        A...B
        .   .
        .   .
        D...C
        STRING
        expect(output).to eq(expected)
      end
      it 'draws a 7x3 rectangle' do
      end
    end
    context ' when we have an edge case' do
      context 'when height = 1 and width = 1' do
      end
      context 'when height = 1 and width = 5' do
      end
      context 'when height = 5 and width = 1' do
      end
      context 'when height = 2 and width = 1' do
      end
      context 'when height = 1 and width = 2' do
      end
    end
  end
end
