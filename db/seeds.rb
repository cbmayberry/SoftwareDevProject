# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Seed the DB with some organizations and events.

seed_list = [
    ['SOUL', '4505 S Claiborne Ave', 'Sustaining Our Urban Landscape', 'https://soulnola.org/', 'Fall Treequinox Fundraiser', 'fundraiser', '29-Oct-2021'],
    ['Department of Sanitation', '2829 Elysian Fields Ave', 'Recycling Drop-Off Center', 'https://nola.gov/sanitation/recycling/drop-off/', 'Recycling Drop-Off', 'Accepts e-waste, batteries, glass, and other materials not usually collected from homes.', '13-Nov-2021'],
    ['The Green Project', '2831 Marais St', 'Nonprofit paint recycling and salvage', 'https://www.thegreenproject.org/', 'Environmental Education Lesson', 'Free for kids K-12', '15-Jan-2022'],
    ['A Community Voice', '2221 St Claude Avenue', 'Non-profit community organization comprised of working, poor, elderly, women, children, and families', 'http://www.acommunityvoice.org/', 'A Community Voice Conference Call', 'meeting', '11-Nov-2021'],
    ['Build Now NOLA', '1019 Erato Street', 'Helps residents rebuild New Orleans greener and smarter', 'http://www.buildnownola.com/', 'Online-Only Auction', 'Auction sale of 60 structures and vacant lots located citywide', '09-Nov-2021'],
    ['Camp Restore', '9301 Chef Menteur Hwy', 'Provide housing, meals and service project coordination to thousands of volunteer and mission trip groups', 'https://camprestore.org/', 'Laurel Elementary Restoration', 'Help rebuild Laurel Elementary school following Ida destruction', '05-Jan-2022'],
    ['First Line Schools', '300 N Broad Street Suite 207', 'Create and inspire great open enrollment public schools in New Orleans', 'https://firstlineschools.org/', 'Lusher Gala', 'Help raise funds for Lusher Middle School', '10-Dec-2021'],
    ['Friends of City Park', '1 Palm Drive', 'Raise funds to maintain and refurbish New Orleans City Park', 'https://www.friendsofcitypark.com/', 'Swamp Vista Walking Tour', 'Stroll among bald cypress trees into secluded areas many people dont even know exist', '12-Nov-2021'],
    ['Habitat for Humanity', '2900 Elysian Fields Ave', 'Responsibly build communities where families can thrive in homes they can afford', 'https://habitat-nola.org/', 'Ida Restoration Project', 'Help rebuild homes for displaced Ida victims', '04-Dec-2021'],
    ['Levees', '5000 Warrington Dr', 'Provide education on why the levees broke in New Orleans during Hurricane Katrina', 'https://levees.org/', 'Sculpture Unveiling', 'Residents of Filmore Gardens neighborhood will unveil a new sculpture', '07-Nov-2021'],
    ['NOLA Tree Project', '5701 Canal Blvd', 'Replant the 100000 trees lost to Hurricane Katrina', 'https://nolatreeproject.org/', 'Help Feed Families', 'Accepts food supplies and cooking materials for families in need', '17-Nov-2021'],
    ['One Book One NOLA', '2920 Marais St', 'Encourage everyone age 16 and above in the Greater New Orleans area to read the same book at the same time', 'http://onebookonenola.org/', 'Community Meeting', 'Discuss plans to encourage literacy in NOLA', '16-Nov-2021'],
    ['Save Our Cemeteries', '4500 N Claiborne Ave', 'Preserve and restore the historic cemeteries of Louisiana', 'https://www.saveourcemeteries.org/', 'Metairie Cemetery Cleanup', 'Help clean Ida debris from the cemetery', '07-Nov-2021'],
    ['Jewish Community Center', '5342 St Charles Avenue', 'Pillar of New Orleans early childhood education', 'http://www.nojcc.org/', 'Morris Bart Lecture', 'A boxed lunch followed by a fascinating lecture and discussion', '08-Nov-2021'],
    ['Forgotten But Not Gone', '3800 St Charles Avenue', 'CD project to raise money for ongoing hurricane relief efforts', 'http://forgotten-but-not-gone.org/', 'Mission On The Bay', 'Ida cleanup on the Mississippi coast', '15-Dec-2022'],
    ['Alliance for Affordable Energy', '31 Palm Drive', 'Create responsible energy policy for Louisiana and the Nation', 'https://www.all4energy.org/', 'Executive Meeting', 'Public forum to vote on items ready for decision', '17-Nov-2021'],
    ['Baptist Community Ministries', '400 Poydras St', 'Attain a more healthy community for the people living in NOLA', 'https://www.bcm.org/', 'Faith Community Nurses', 'Learn about how nurses help keep our community healthy', '03-Feb-2022'],
    ['Friends of West End', '141 W Robert E Lee Blvd', 'Rebuild parks and other green spaces at West End', 'https://www.facebook.com/FriendsofWestEnd/', 'Sunset Fest', 'Raise awareness for park conservation in the West End', '05-Nov-2021'],
    ['Humane Society of Louisiana', '2321 St Claude Avenue', 'Focus on cruelty investigation and pet adoptions', 'https://humanela.org/', 'Paw Party', 'Help care for and feed pets at the animal shelter', '12-Dec-2021'],
    ['Providence Community Housing', '2117 Ursulines Avenue', 'Help address the critical need for affordable and supportive housing in Louisiana', 'https://providencecommunityhousing.org/', 'Senior Housing Drive', 'Collect resources to rebuild homes for elderly people', '23-Nov-2021']
]

seed_list.each do |name, location, description, website, event_name, event_description, date|
    seedOrg = Org.create(name: name, location: location, description: description, website: website)
    seedEvent = Event.create(event_name: event_name, event_description: event_description, date: date, org: seedOrg)
end 


