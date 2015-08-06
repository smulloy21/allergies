class Fixnum
  define_method(:allergies) do
    score = self
    allergy_list = []
    sentence = ""
    until score == 0
      if score >= 128
        score -= 128
        allergy_list.unshift("cats")
      elsif score >= 64
        score -= 64
        allergy_list.unshift("pollen")
      elsif score >= 32
        score -= 32
        allergy_list.unshift("chocolate")
      elsif score >= 16
        score -= 16
        allergy_list.unshift("tomatoes")
      elsif score >= 8
        score -= 8
        allergy_list.unshift("strawberries")
      elsif score >= 4
        score -= 4
        allergy_list.unshift("shellfish")
      elsif score >= 2
        score -= 2
        allergy_list.unshift("peanuts")
      else
        score -= 1
        allergy_list.unshift("eggs")
      end
    end
    if allergy_list.length > 0
      if allergy_list.length > 1
        sentence += "You are allergic to"
        allergy_list.each() do |all|
          if all == allergy_list[0]
            sentence += " " + all
          elsif all == allergy_list[allergy_list.length-1]
            sentence += " and "  + all + "."
          else
            sentence += ", " + all
          end
        end
      else
        sentence = "You are allergic to " + allergy_list[0] + "."
      end
    else
      sentence = "You have no allergies."
    end
    sentence
  end
end
