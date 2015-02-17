class Calculator
  def daily_interest(principal, rate_of_interest)
    (principal * rate_of_interest).round(2)
  end

  def interest_accrued(start_date, end_date, start_date_amount, rate_of_interest)
    total_interest = 0
    principal = start_date_amount
    start_date.upto(end_date) do
      total_interest += daily_interest(principal, rate_of_interest)
    end

    total_interest
  end
end