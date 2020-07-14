require 'spec_helper'

RSpec.describe './rekangle' do
  let(:output) { %x(#{command}) }
  context 'when one argument is zero or negative' do
    let(:command) { 'ruby ./rekangle.rb 0 0' }
    it { expect(output).to include('ArgumentError') }
  end
end
