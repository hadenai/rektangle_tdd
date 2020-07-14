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
        rectangle = Rektangle.new(7,3)
        output = rectangle.draw
        expected = <<~STRING
        A.....B
        .     .
        D.....C
        STRING
        expect(output).to eq(expected)
      end
    end
    context ' when we have an edge case' do
      context 'when height = 1 and width = 1' do
        it 'draws the top left character only' do
          rectangle = Rektangle.new(1,1)
          output = rectangle.draw
          expected = "A\n"
          expect(output).to eq(expected)
        end
      end
      context 'when height = 1 and width = 5' do
        it 'draws a line of lenght 5' do
          rectangle = Rektangle.new(5,1)
          output = rectangle.draw
          expected = "A...B\n"
          expect(output).to eq(expected)
        end
      end
      context 'when height = 5 and width = 1' do
        xit 'draws a column of height 5' do
          rectangle = Rektangle.new(1,5)
          output = rectangle.draw
          expected = expected = <<~STRING
          A
          .
          .
          .
          D
          STRING
          expect(output).to eq(expected)
        end
      end
      context 'when height = 2 and width = 2' do
          it 'draws a square of 2x2 with correct character' do
          rectangle = Rektangle.new(2,2)
          output = rectangle.draw
          expected = expected = <<~STRING
          AB
          DC
          STRING
          expect(output).to eq(expected)
        end
      end
      context 'when height = 1 and width = 2' do
        it 'draws a column of height 2' do
        rectangle = Rektangle.new(1,2)
        output = rectangle.draw
        expected = expected = <<~STRING
        A
        D
        STRING
        expect(output).to eq(expected)
        end
      end
      context 'when height = 1 and width = 2' do
        it 'draws a square of 1x2 with correct character' do
        rectangle = Rektangle.new(2,1)
        output = rectangle.draw
        expected = expected = <<~STRING
        AB
        STRING
        expect(output).to eq(expected)
        end
      end
    end
  end
end
