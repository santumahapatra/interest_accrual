class Calculator
  attr_accessor :start_loan_amount, :rate_of_interest, :disbursement_date

  def initialize(start_loan_amount, rate_of_interest, disbursement_date)
    @start_loan_amount = start_loan_amount
    @rate_of_interest = rate_of_interest
    @disbursement_date = disbursement_date
  end

  def daily_interest(principal)
    (principal * @rate_of_interest).round(2)
  end

  def interest_accrued(start_date, end_date, start_date_amount)
    total_interest = 0
    principal = start_date_amount
    start_date.upto(end_date) do
      interest = daily_interest(principal)
      total_interest += interest
      principal += interest
    end

    total_interest
  end

  
end