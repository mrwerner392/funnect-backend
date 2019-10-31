# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

matt = User.create(first_name: 'Matt', username: 'matt18', password: '18', age: 27, gender: 'Male', bio: 'I made this', college: 'Williams College', occupation: 'Software Engineer')

Topic.create(name: 'Aliens')
Topic.create(name: 'Alcohol')
Topic.create(name: 'Animal Rights')
Topic.create(name: 'Artificial Intelligence')
Topic.create(name: 'Astrology')
Topic.create(name: 'Charity')
Topic.create(name: 'Children')
Topic.create(name: 'Climate')
Topic.create(name: 'Coffee and Tea')
Topic.create(name: 'Culture')
Topic.create(name: 'Dogs')
Topic.create(name: 'Economy')
Topic.create(name: 'Education')
Topic.create(name: 'Electronics')
Topic.create(name: 'Entertainment')
Topic.create(name: 'Environment')
Topic.create(name: 'Equality')
Topic.create(name: 'Fashion')
Topic.create(name: 'Family')
Topic.create(name: 'Finance')
Topic.create(name: 'Fitness')
Topic.create(name: 'Food')
Topic.create(name: 'Friendship')
Topic.create(name: 'Gaming')
Topic.create(name: 'Health')
Topic.create(name: 'Human Rights')
Topic.create(name: 'Local News and Events')
Topic.create(name: 'Movies')
Topic.create(name: 'Music')
Topic.create(name: 'Mathematics')
Topic.create(name: 'Mental Health')
Topic.create(name: 'Money')
Topic.create(name: 'News')
Topic.create(name: 'Parenthood')
Topic.create(name: 'Pregnancy')
Topic.create(name: 'Politics')
Topic.create(name: 'Programming')
Topic.create(name: 'Relationships')
Topic.create(name: 'Sex')
Topic.create(name: 'Social Media')
Topic.create(name: 'Sports')
Topic.create(name: 'Technology')
Topic.create(name: 'Travel')
Topic.create(name: 'TV')
Topic.create(name: 'Volunteer Work')
Topic.create(name: 'Work')

# Manhattan

Neighborhood.create(name: 'Alphabet City')
Neighborhood.create(name: 'Battery Park City')
Neighborhood.create(name: 'Carnegie Hill')
Neighborhood.create(name: 'Chelsea')
Neighborhood.create(name: 'Chinatown')
Neighborhood.create(name: 'East Harlem')
Neighborhood.create(name: 'East Village')
Neighborhood.create(name: 'Financial District')
Neighborhood.create(name: 'Flatiron District')
Neighborhood.create(name: 'Gramercy Park')
Neighborhood.create(name: 'Greenwich Village')
Neighborhood.create(name: 'Harlem')
Neighborhood.create(name: "Hell's Kitchen/Clinton")
Neighborhood.create(name: 'Inwood')
Neighborhood.create(name: 'Kips Bay')
Neighborhood.create(name: 'Lincoln Square')
Neighborhood.create(name: 'Lower East Side')
Neighborhood.create(name: 'Manhattan Valley')
Neighborhood.create(name: 'Midtown East')
Neighborhood.create(name: 'Midtown West')
Neighborhood.create(name: 'Morningside Heights')
Neighborhood.create(name: 'Murray Hill')
Neighborhood.create(name: 'NoLita/Little Italy')
Neighborhood.create(name: 'Roosevelt Island')
Neighborhood.create(name: 'SoHo')
Neighborhood.create(name: 'Tribeca')
Neighborhood.create(name: 'Upper East Side')
Neighborhood.create(name: 'Upper West Side')
Neighborhood.create(name: 'Washington Heights')
Neighborhood.create(name: 'West Village')

# Bronx

Neighborhood.create(name: 'Baychester/Co-op City')
Neighborhood.create(name: 'Bedford Park')
Neighborhood.create(name: 'Belmont')
Neighborhood.create(name: 'Bronxdale')
Neighborhood.create(name: 'Castle Hill')
Neighborhood.create(name: 'City Island')
Neighborhood.create(name: 'Concourse Village/Grand Concourse/Morrisania')
Neighborhood.create(name: 'Country Club')
Neighborhood.create(name: 'Fieldston')
Neighborhood.create(name: 'Fordham')
Neighborhood.create(name: 'Hunts Point')
Neighborhood.create(name: 'Kingsbridge')
Neighborhood.create(name: 'Kingsbridge Heights')
Neighborhood.create(name: 'Melrose')
Neighborhood.create(name: 'Morris Heights')
Neighborhood.create(name: 'Morris Park')
Neighborhood.create(name: 'Mott Haven')
Neighborhood.create(name: 'Parkchester')
Neighborhood.create(name: 'Pelham Bay')
Neighborhood.create(name: 'Pelham Gardens')
Neighborhood.create(name: 'Pelham Parkway')
Neighborhood.create(name: 'Port Morris')
Neighborhood.create(name: 'Riverdale')
Neighborhood.create(name: 'Soundview')
Neighborhood.create(name: 'Throgs Neck')
Neighborhood.create(name: 'Tremont')
Neighborhood.create(name: 'University Heights')
Neighborhood.create(name: 'Wakefield')
Neighborhood.create(name: 'Williamsbridge')
Neighborhood.create(name: 'Woodlawn')

# Queens

Neighborhood.create(name: 'Arverne')
Neighborhood.create(name: 'Astoria')
Neighborhood.create(name: 'Bayside')
Neighborhood.create(name: 'Beechhurst')
Neighborhood.create(name: 'Belle Harbor/Neponsit')
Neighborhood.create(name: 'Bellerose')
Neighborhood.create(name: 'Briarwood')
Neighborhood.create(name: 'Broad Channel')
Neighborhood.create(name: 'Cambria Heights')
Neighborhood.create(name: 'College Point')
Neighborhood.create(name: 'Corona')
Neighborhood.create(name: 'Douglaston')
Neighborhood.create(name: 'East Elmhurst')
Neighborhood.create(name: 'Elmhurst')
Neighborhood.create(name: 'Far Rockaway')
Neighborhood.create(name: 'Floral Park')
Neighborhood.create(name: 'Flushing')
Neighborhood.create(name: 'Forest Hills')
Neighborhood.create(name: 'Fresh Meadows')
Neighborhood.create(name: 'Glen Oaks')
Neighborhood.create(name: 'Glendale')
Neighborhood.create(name: 'Hillcrest')
Neighborhood.create(name: 'Hollis')
Neighborhood.create(name: 'Hollis Hills')
Neighborhood.create(name: 'Howard Beach')
Neighborhood.create(name: 'Jackson Heights')
Neighborhood.create(name: 'Jamaica')
Neighborhood.create(name: 'Jamaica Estates')
Neighborhood.create(name: 'Jamaica Hills')
Neighborhood.create(name: 'Kew Gardens')
Neighborhood.create(name: 'Laurelton')
Neighborhood.create(name: 'Little Neck')
Neighborhood.create(name: 'Long Island City')
Neighborhood.create(name: 'Maspeth')
Neighborhood.create(name: 'Middle Village')
Neighborhood.create(name: 'Oakland Gardens')
Neighborhood.create(name: 'Ozone Park')
Neighborhood.create(name: 'Queens Village')
Neighborhood.create(name: 'Rego Park')
Neighborhood.create(name: 'Richmond Hill')
Neighborhood.create(name: 'Ridgewood')
Neighborhood.create(name: 'Rockaway Park')
Neighborhood.create(name: 'Rosedale')
Neighborhood.create(name: 'South Jamaica')
Neighborhood.create(name: 'South Ozone Park')
Neighborhood.create(name: 'Springfield Gardens')
Neighborhood.create(name: 'St. Albans')
Neighborhood.create(name: 'Sunnyside')
Neighborhood.create(name: 'Whitestone')
Neighborhood.create(name: 'Woodhaven')
Neighborhood.create(name: 'Woodside')

# Brooklyn

Neighborhood.create(name: 'Bath Beach')
Neighborhood.create(name: 'Bay Ridge')
Neighborhood.create(name: 'Bedford-Stuyvesant')
Neighborhood.create(name: 'Bensonhurst')
Neighborhood.create(name: 'Bergen Beach')
Neighborhood.create(name: 'Boerum Hill')
Neighborhood.create(name: 'Borough Park')
Neighborhood.create(name: 'Brighton Beach')
Neighborhood.create(name: 'Brooklyn Heights')
Neighborhood.create(name: 'Brownsville')
Neighborhood.create(name: 'Bushwick')
Neighborhood.create(name: 'Canarsie')
Neighborhood.create(name: 'Carroll Gardens')
Neighborhood.create(name: 'Cobble Hill')
Neighborhood.create(name: 'Coney Island')
Neighborhood.create(name: 'Crown Heights')
Neighborhood.create(name: 'Cypress Hills')
Neighborhood.create(name: 'Downtown Brooklyn')
Neighborhood.create(name: 'Dumbo/Vinegar Hill')
Neighborhood.create(name: 'Dyker Heights')
Neighborhood.create(name: 'East New York')
Neighborhood.create(name: 'Flatbush')
Neighborhood.create(name: 'Flatlands')
Neighborhood.create(name: 'Fort Greene/Clinton Hill')
Neighborhood.create(name: 'Gerritsen Beach')
Neighborhood.create(name: 'Gowanus')
Neighborhood.create(name: 'Gravesend')
Neighborhood.create(name: 'Greenpoint')
Neighborhood.create(name: 'Greenwood Heights')
Neighborhood.create(name: 'Manhattan Beach')
Neighborhood.create(name: 'Marine Park')
Neighborhood.create(name: 'Midwood')
Neighborhood.create(name: 'Mill Basin')
Neighborhood.create(name: 'Park Slope')
Neighborhood.create(name: 'Prospect Heights')
Neighborhood.create(name: 'Prospect Park South/Kensington')
Neighborhood.create(name: 'Red Hook')
Neighborhood.create(name: 'Sea Gate')
Neighborhood.create(name: 'Sheepshead Bay')
Neighborhood.create(name: 'Sunset Park')
Neighborhood.create(name: 'Williamsburg')
Neighborhood.create(name: 'Windsor Terrace')

# Staten Island

Neighborhood.create(name: ('Annadale')
Neighborhood.create(name: ('Arden Heights')
Neighborhood.create(name: ('Arrochar')
Neighborhood.create(name: ('Bay Street')
Neighborhood.create(name: ('Bulls Head')
Neighborhood.create(name: ('Castleton Corners')
Neighborhood.create(name: ('Charleston')
Neighborhood.create(name: ('Clifton')
Neighborhood.create(name: ('Dongan Hills')
Neighborhood.create(name: ('Eltingville')
Neighborhood.create(name: ('Emerson Hill')
Neighborhood.create(name: ('Graniteville')
Neighborhood.create(name: ('Grant City')
Neighborhood.create(name: ('Grasmere/Concord')
Neighborhood.create(name: ('Great Kills')
Neighborhood.create(name: ('Grymes Hill')
Neighborhood.create(name: ('Huguenot')
Neighborhood.create(name: ('Livingston')
Neighborhood.create(name: ('Manor Heights')
Neighborhood.create(name: ('Mariners Harbor')
Neighborhood.create(name: ('Midland Beach')
Neighborhood.create(name: ('New Brighton')
Neighborhood.create(name: ('New Dorp/New Dorp Beach')
Neighborhood.create(name: ('New Springville')
Neighborhood.create(name: ('Oakwood')
Neighborhood.create(name: ('Pleasant Plains')
Neighborhood.create(name: ('Port Richmond')
Neighborhood.create(name: ("Prince's Bay")
Neighborhood.create(name: ('Richmondtown')
Neighborhood.create(name: ('Rosebank')
Neighborhood.create(name: ('Rossville')
Neighborhood.create(name: ('Shore Acres')
Neighborhood.create(name: ('Silver Lake')
Neighborhood.create(name: ('South Beach')
Neighborhood.create(name: ('St. George')
Neighborhood.create(name: ('Stapleton')
Neighborhood.create(name: ('Sunnyside')
Neighborhood.create(name: ('Todt Hill')
Neighborhood.create(name: ('Tompkinsville')
Neighborhood.create(name: ('Tottenville')
Neighborhood.create(name: ('Travis')
Neighborhood.create(name: ('West New Brighton')
Neighborhood.create(name: ('Westerleigh')
Neighborhood.create(name: ('Willowbrook')
Neighborhood.create(name: ('Woodrow')
