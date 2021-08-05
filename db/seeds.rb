Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
a = Company.create(name: "Google", founding_year: 1998)
b =Company.create(name: "Facebook", founding_year: 2004)
c = Company.create(name: "Dunder Mifflin", founding_year: 2002)
d = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
e = Dev.create(name: "Rick")
f = Dev.create(name: "Morty")
g = Dev.create(name: "Mr. Meseeks")
h = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "pen",value: 2, dev_id: e.id, company_id: a.id)
Freebie.create(item_name: "marker",value: 1, dev_id: f.id, company_id: a.id)
Freebie.create(item_name: "cup",value: 4, dev_id: e.id, company_id: b.id)
Freebie.create(item_name: "ball",value: 5, dev_id: f.id, company_id: b.id)
Freebie.create(item_name: "tickets",value: 2, dev_id: g.id, company_id: c.id)
Freebie.create(item_name: "phone",value: 1, dev_id: h.id, company_id: c.id)
Freebie.create(item_name: "cards",value: 4, dev_id: g.id, company_id: d.id)
Freebie.create(item_name: "computer",value: 5, dev_id: h.id, company_id: d.id)

puts "Seeding done!"





# Object Association Methods
# Object Association Methods are methods that active record provides when using has_many, belongs_to, and has_many through


# note - you can check out all the methods on an Object by calling .methods

# rake db:create_migration NAME=create_freebies //  rake db:create_migration NAME=create_"here we put the file name in this case freebies"
# rake db:migrate
# rake db:migrate:status
# rake db:seed


# If the seed file is set up correctly the below should work
# Use rake console and check that these methods work before proceeding. For example, you should be able to
# call Dev.first.companies and see a list of the companies for the first dev in the database based on your seed data;
# and Freebie.first.dev should return the dev for the first freebie in the database.