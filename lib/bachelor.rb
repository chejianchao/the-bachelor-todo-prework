def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each {|item|
    if item["status"] == "Winner"
      return item["name"].split(" ")[0]
    end
  }
end

def get_contestant_name(data, occupation)
  # code here
  res = []
  data.each {|season, obj|
    obj.each{|contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    }
  }
  res
end

def count_contestants_by_hometown(data, hometown)
  # code here
  res = 0
  data.each {|season, obj|
    obj.each{|contestant|
      if contestant["hometown"] == hometown
        res+=1
      end
    }
  }
  res
end

def get_occupation(data, hometown)
  # code here
  data.each {|season, obj|
    obj.each{|contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  cnt = 0.0
  age = 0.0
  data[season].each {|contestant|
    age += contestant["age"].to_i
    cnt+=1
  }
  (age/cnt).round
end
