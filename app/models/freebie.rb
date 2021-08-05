require "pry"

class Freebie < ActiveRecord::Base

    #returns the Dev instance for this Freebie
    belongs_to :dev
    #returns the Company instance for this Freebie
    belongs_to :company
    

    def print_details
        # should return a string formatted as follows: {insert dev's name} owns a
        # {insert freebie's item_name} from {insert company's name}
        puts "#{self.dev.name} owns a #{self.company.name}"


        #in termainal to call binding.pry
        #  a = Freebie.all.find(16)
        #  a.print_details


        # self.company = #<Company:0x00007fdcd554b820 id: 8, name: "Enron", founding_year: 1995>
        # self.company.name = "Enron"

        # self.dev = #<Dev:0x00007fdcd882af48 id: 8, name: "Gazorpazop">
        # self.dev.name = "Gazorpazop"
    end
end
