require 'pp'
def nyc_pigeon_organizer(data)
  result = {}
  new_data = data.reduce({}) do |memo, (category,characteristic_array)|
    characteristic_array.reduce({})  do |new_memo, (characteristic,birdname_array)|
      birdname_array.each do |name|
        if !result[name]
          result[name] = {}
        end
        if !result[name][category]
          result[name][category] = []
        end
        result[name][category] << characteristic.to_s
      end
      memo = new_memo
      new_memo
    end
  end
  pp result
end

#need a hash of pigeons by reduce 