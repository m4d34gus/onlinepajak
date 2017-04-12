class CountController < ApplicationController
  def index
    @rules = Rule.all
  end

  def count
    income = params[:income].to_f
    rules = Rule.all
    taxnominal=0
    for rule in rules
       if income > rule.upper_limit && rule.upper_limit != 0
         impincome = rule.upper_limit
       else
         impincome = income
       end

       taxnominal =+ (impincome*rule.tax_rate)/100
       income = income-rule.upper_limit

       if income <=0
         break
       end


    end
    @taxnominal = taxnominal
  end


end
