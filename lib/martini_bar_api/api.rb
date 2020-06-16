class API
   def self.get_cocktails
        response = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=martini")
        data = JSON.parse(response)
        
        data["drinks"].each do |details|
            ingredient = details.select {|ingredient| ingredient.start_with?("strIngredient") }.values.compact
            measure = details.select { |measurement| measurement.start_with?("strMeasure") }.values.compact

            Martini.new(
            name: details["strDrink"],
            glass: details["strGlass"],
            instructions: details["strInstructions"],
            ingredients: ingredient.zip(measure).to_h
            )
            # drink.ingredients = ing.zip(measure).to_h
            binding.pry
        end
        
    end
end