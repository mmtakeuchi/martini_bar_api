class CLI
    def run
        puts "Welcome to the Martini Bar API!"

        API.get_cocktails
       
        cocktail_list

        cocktail_details
    end


    def cocktail_list
        Martini.all.map.with_index(1) do |cocktail, i|
            puts "#{i}. #{cocktail.name.first}"
        end
    end

    def cocktail_details
        print "Enter the number for the cocktail you would like to look at: "
        user_input = gets.strip

        if user_input == "exit"
            goodbye
        end
    end 

    def goodbye
        puts "Thank you for visiting the Cognac Cocktails API."
        puts "Have a great day!"
    end
end