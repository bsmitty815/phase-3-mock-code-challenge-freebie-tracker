class Dev < ActiveRecord::Base

    #returns a collection of all the freebies that the Dev has collected
    has_many :freebies
    #returns a collection of all the companies that the Dev has collected freebies from
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # accepts an item_name (string) and returns true if any of the freebies
        # associated with the dev has that item_name, otherwise returns false
        
        if (self.freebies.all.find_by(item_name: item_name))
            return true
        else
            return false
        end

        # a = Dev.all.find(5) = #<Dev:0x00007f915dad63f8 id: 5, name: "Rick">
        # item = "pen"
        # a.received_one?(item)
    end

    def give_away(dev, freebie)
        #accepts a Dev instance and a Freebie instance, changes the freebie's dev to be the given dev
        binding.pry
        freebie.dev_id = self.id
        freebie.save
        # a = Dev.all.find(5) = #<Dev:0x00007fe70ece20a0 id: 5, name: "Rick">
        # dev = Dev.all.find(6) = #<Dev:0x00007fe70aa69098 id: 6, name: "Morty">
        # freebie = dev.freebies.all.find(10) = one of the dev freebies
        # a.give_away(dev, freebie)
    end
    
end
