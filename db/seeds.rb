# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Seed the DB with some organizations and events.

seed_list = [
    ['SOUL', '4505 S Claiborne Ave', 'Sustaining Our Urban Landscape', 'https://soulnola.org/', 'Fall Treequinox Fundraiser', 'fundraiser', '29-Oct-2021'],
    ['Department of Sanitation', '2829 Elysian Fields Ave', 'Recycling Drop-Off Center', 'https://nola.gov/sanitation/recycling/drop-off/', 'Recycling Drop-Off', 'Accepts e-waste, batteries, glass, and other materials not usually collected from homes.', '13-Nov-2021'],
    ['The Green Project', '2831 Marais St', 'Nonprofit paint recycling and salvage', 'https://www.thegreenproject.org/', 'Environmental Education Lesson', 'Free for kids K-12', '15-Jan-2022']
]

seed_list.each do |name, location, description, website, event_name, event_description, date|
    seedOrg = Org.create(name: name, location: location, description: description, website: website)
    seedEvent = Event.create(event_name: event_name, event_description: event_description, date: date, org: seedOrg)
end 


