require "rubygems"
require "active_merchant"

ActiveMerchant::Billing::Base.mode = :test

gateway = ActiveMerchant::Billing::PaypalGateway.new(
  :login => "bhavin_1360070053_biz_api1.yahoo.in",
  :password => " 	1360070073",
  :signature => "AQ.ZH1QTLJHyuX-JV8XftUyxLz2gAi37V-VmcSV06pOva53j4iv5Caw7 "
)

credit_card = ActiveMerchant::Billing::CreditCard.new(
  :type               => "visa",
  :number             => "4024007148673576",
  :verification_value => "123",
  :month              => 1,
  :year               => Time.now.year+1,
  :first_name         => "Bhavin",
  :last_name          => "Thakkar"
)

if credit_card.valid?
  # or gateway.purchase to do both authorize and capture
  response = gateway.authorize(1000, credit_card, :ip => "127.0.0.1")
  if response.success?
    gateway.capture(1000, response.authorization)
    puts "Purchase complete!"
  else
    puts "Error: #{response.message}"
  end
else
  puts "Error: credit card is not valid. #{credit_card.errors.full_messages.join('. ')}"
end
