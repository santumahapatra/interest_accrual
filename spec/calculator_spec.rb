require 'calculator.rb'
require 'date'

describe Calculator do
  let(:underwriter) { Calculator.new(10000, (0.15/360), Date.new(2015, 1, 1)) }

  describe '#daily_interest' do
    it 'calculates the daily interest' do
      expect(underwriter.daily_interest(10000)).to be(4.17)
      expect(underwriter.daily_interest(10000)).not_to be(4.16)
    end
  end

  describe '#interest_accrued' do
    it 'calculate the interest accrued in the period' do
      start_date = Date.new(2015, 1, 1)
      end_date = Date.new(2015, 1, 2)
      expect(underwriter.interest_accrued(start_date, end_date, 10000)).to be(8.34)
    end
  end
end