require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]= {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
 arr1 = holiday_hash[:winter][:christmas]
  arr2 = holiday_hash[:winter][:new_years]
  arr1+ arr2

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
    holiday_hash.collect do |season, y|
       puts "#{season.to_s.capitalize!}:"
      y.each do |holi,v|
        new_v = v.join(', ')
        new_holi = holi.to_s
        str_holi = new_holi.gsub(/_/, ' ')
        final_holi = str_holi.split.each {|x| x.capitalize!}
         holiday = final_holi.join(' ')

         puts "  #{holiday}: #{new_v}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  #     holidays_with_bbqs(holiday_supplies)
    #=> [:fourth_of_july, :memorial_day]
    holi_box = []

    holiday_hash.collect do |season, y|
         y.each do |holi,val|

           if  val.include?("BBQ")
             holi_box << holi
           end

         end

    end
 return holi_box
end







