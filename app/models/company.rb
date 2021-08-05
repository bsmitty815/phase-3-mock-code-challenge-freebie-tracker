class Company < ActiveRecord::Base

    #returns a collection of all the freebies for the Company
    has_many :freebies
    #returns a collection of all the devs who collected freebies from the Company
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        # takes a dev (an instance of the Dev class), an item_name (string), and a value as arguments, and 
        # creates a new Freebie instance associated with this company and the given dev

        Freebie.create(item_name: item_name,value: value, dev_id: dev.id, company_id: self.id)
        # a = Company.all.find(5)
        # dev = Dev.all.find(5)
        # value = 5
        # item = "plant"
        # a.give_freebie(dev, item, value)
    end

    def Company.oldest_company
        #returns the Company instance with the earliest founding year
        Company.all.max {|a, b| a.founding_year <=> b.founding_year}
    end

end
