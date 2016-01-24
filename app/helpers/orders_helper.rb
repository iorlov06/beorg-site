module OrdersHelper
  def wordify_status status
    case status
    when 1
      "Waiting for payment"
    when 2
      "Deposited"
    when 3
      "Payment succeeded"
    when 4
      "Payment error"
    when 5
      "Cancelled"
    when 6
      "Delivered"
    end
  end
end
