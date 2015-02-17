require 'calculator.rb'
require 'date'

describe Calculator do
  let(:principal) {10000.00}
  let(:rate_of_interest) { (0.15/360) }
  let(:underwriter) { Calculator.new }
  let(:loan) { { amount: 1000, date: Date.new(2015, 1, 1) } }


  describe '#daily_interest' do
    it 'calculates the daily interest' do
      expect(underwriter.daily_interest(principal, rate_of_interest)).to be(4.17)
      expect(underwriter.daily_interest(principal, rate_of_interest)).not_to be(4.16)
    end
  end

  describe '#interest_accrued' do
    it 'calculate the interest accrued in the period' do
      start_date = Date.new(2015, 1, 1)
      end_date = Date.new(2015, 1, 2)
      expect(underwriter.interest_accrued(start_date, end_date, principal, rate_of_interest)).to be(8.34)
    end
  end
end