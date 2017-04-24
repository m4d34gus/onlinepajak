class CountController < ApplicationController
  def index
    @rules = Rule.all
  end

  def count
    income = params[:income].to_f
    rules = Rule.all
    taxnominal=0
    for rule in rules
       if rule.upper_limit !=0
         maxtax = rule.upper_limit - rule.lower_limit
       else
         maxtax = income
       end

       if income > maxtax && rule.upper_limit != 0
         tmpincome = maxtax
       else
         tmpincome = income
       end

       taxnominal += (tmpincome*rule.tax_rate)/100
       income -= tmpincome

       if income <=0
         break
       end


    end
    @taxnominal = taxnominal
  end


end
