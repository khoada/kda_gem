# encoding: utf-8
require "kda_gem/version"

module KdaGem
  class DisplayTime
    def convert_datetime(date, locale=nil)
      date = date.to_datetime
      if locale.to_s == "ja"
        if date.to_date == Time.now.to_date
          "本日 #{date.strftime("%H:%M")}" 
        elsif date.to_date == 1.day.ago.to_date                                                 
          "昨日 #{date.strftime("%H:%M")}"                          
        else
          date.strftime("%-m月%d日 %H:%M")
        end
      else 
        if date.to_date == Time.now.to_date
          "Today #{date.strftime("at %H:%M")}"
        elsif date.to_date == 1.day.ago.to_date
          "Yesterday #{date.strftime("at %H:%M")}"                             
        else 
        end
      end
    end
  end
end
