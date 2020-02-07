require 'pp'
def nyc_pigeon_organizer(data)
  result = {}
  new_data = data.reduce({}) do |memo, (category,characteristic_array)|
    characteristic_array.reduce({})  do |new_memo, (characteristic,birdname_array)|
      birdname_array.each do |name|
        if !new_memo[name]
          new_memo[name] = {}
        end
        if !new_memo[name][category]
          new_memo[name][category] = []
        end
        new_memo[name][category] << characteristic.to_s
      end
      memo = new_memo
      new_memo
    end
  #p memo["Theo"].class
  #p memo.class
  result = memo
  end
  p result
end

#need a hash of pigeons by reduce 