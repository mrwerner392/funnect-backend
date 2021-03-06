# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PostInterest.destroy_all
EventAttendee.destroy_all
UserInterest.destroy_all
Event.destroy_all
Post.destroy_all
User.destroy_all
Topic.destroy_all
Neighborhood.destroy_all
Interest.destroy_all


User.reset_pk_sequence
Topic.reset_pk_sequence
Neighborhood.reset_pk_sequence
Post.reset_pk_sequence
PostInterest.reset_pk_sequence
Interest.reset_pk_sequence
UserInterest.reset_pk_sequence
Event.reset_pk_sequence
EventAttendee.reset_pk_sequence

# users

matt = User.create(first_name: 'Matt', username: 'matt18', password: '18', age: 27, gender: 'Male', bio: 'I made this', college: 'Williams College', occupation: 'Software Engineer')
avi = User.create(first_name: 'Avi', username: 'avi1', password: '1', age: 26, gender: 'Male', bio: 'I am avi', college: 'City College', occupation: 'living legend')
kim = User.create(first_name: 'Kim', username: 'kim1', password: '1', age: 22, gender: 'Female', bio: 'I am kim', college: 'UNCG', occupation: 'little red riding hood')
michelle = User.create(first_name: 'Michelle', username: 'michelle1', password: '1', age: 30, gender: 'Female', bio: 'I am michelle', college: 'idk', occupation: 'game maker')
sukrit = User.create(first_name: 'Sukrit', username: 'sukrit1', password: '1', age: 25, gender: 'Male', bio: 'I am sukrit', college: 'somewhere', occupation: 'inventor of websockets')

# testing user validations
# t1 = User.create(first_name: 'Joe', username: 'sukrit1', password: '1', age: 7, gender: 'Malefffffffffffffhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfh', bio: 'I am sukritfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfhfewuqifhbiqweubfiehbfuerqhguiqrehgfuieqwrbhfgkjqerbgfiqerbugfiuqerhfgiejrbfgjkerbgiqejrhbguiqrebhgivqrejbgiuqerhgiuqe;hrgiuaehrgiquhwegfiquwebgiuwerbgfbeiqrughiuerwghiuqghipqguh4fiuqghefuiqpewghfiuqepwghiupqreghfipqwghpewqurghfipuqewhgfiupq', college: 'somewherefejnqrkgqhjierlhgjkqehrgukqkhuergiphquerghiqerdjkghvqwerjl', occupation: 'inventor of websocketsnjrfk;aenbjrgejkr;gbjkrew;bgkbjkwerbnvgjkureighqrvabndjkvbnkad;bvkjaerbgjkaergk;')
# t2 = User.create(first_name: 'Sukrit', password: '1', bio: 'I am sukrit', college: 'somewhere', occupation: 'inventor of websockets')
# t3 = User.create(first_name: 'Sukrit', username: 'suk', password: '1', age: 205, gender: 'Male', bio: 'I am sukrit', college: 'somewhere', occupation: 'inventor of websockets')
# t4 = User.create(first_name: 'Sukrit', username: 'sukritnewjfbeorwjbnv', password: '1', age: 25, gender: 'Male', bio: 'I am sukrit', college: 'somewhere', occupation: 'inventor of websockets')
#
# byebug

# topics

Topic.create(name: 'Aliens')
Topic.create(name: 'Alcohol')
Topic.create(name: 'Animal Rights')
Topic.create(name: 'Artificial Intelligence')
Topic.create(name: 'Astrology')
Topic.create(name: 'Cats')
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
Topic.create(name: 'Social Media')
Topic.create(name: 'Sports')
Topic.create(name: 'Technology')
Topic.create(name: 'Travel')
Topic.create(name: 'TV')
Topic.create(name: 'Volunteer Work')
Topic.create(name: 'Work')

# neighborhoods

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
Neighborhood.create(name: 'Concourse Village')
Neighborhood.create(name: 'Grand Concourse')
Neighborhood.create(name: 'Morrisania')
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
Neighborhood.create(name: 'Dumbo')
Neighborhood.create(name: 'Vinegar Hill')
Neighborhood.create(name: 'Dyker Heights')
Neighborhood.create(name: 'East New York')
Neighborhood.create(name: 'Flatbush')
Neighborhood.create(name: 'Flatlands')
Neighborhood.create(name: 'Fort Greene')
Neighborhood.create(name: 'Clinton Hill')
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
Neighborhood.create(name: 'Prospect Park South')
Neighborhood.create(name: 'Kensington')
Neighborhood.create(name: 'Red Hook')
Neighborhood.create(name: 'Sea Gate')
Neighborhood.create(name: 'Sheepshead Bay')
Neighborhood.create(name: 'Sunset Park')
Neighborhood.create(name: 'Williamsburg')
Neighborhood.create(name: 'Windsor Terrace')

# Staten Island
Neighborhood.create(name: 'Annadale')
Neighborhood.create(name: 'Arden Heights')
Neighborhood.create(name: 'Arrochar')
Neighborhood.create(name: 'Bay Street')
Neighborhood.create(name: 'Bulls Head')
Neighborhood.create(name: 'Castleton Corners')
Neighborhood.create(name: 'Charleston')
Neighborhood.create(name: 'Clifton')
Neighborhood.create(name: 'Dongan Hills')
Neighborhood.create(name: 'Eltingville')
Neighborhood.create(name: 'Emerson Hill')
Neighborhood.create(name: 'Graniteville')
Neighborhood.create(name: 'Grant City')
Neighborhood.create(name: 'Grasmere/Concord')
Neighborhood.create(name: 'Great Kills')
Neighborhood.create(name: 'Grymes Hill')
Neighborhood.create(name: 'Huguenot')
Neighborhood.create(name: 'Livingston')
Neighborhood.create(name: 'Manor Heights')
Neighborhood.create(name: 'Mariners Harbor')
Neighborhood.create(name: 'Midland Beach')
Neighborhood.create(name: 'New Brighton')
Neighborhood.create(name: 'New Dorp')
Neighborhood.create(name: 'New Dorp Beach')
Neighborhood.create(name: 'New Springville')
Neighborhood.create(name: 'Oakwood')
Neighborhood.create(name: 'Pleasant Plains')
Neighborhood.create(name: 'Port Richmond')
Neighborhood.create(name: "Prince's Bay")
Neighborhood.create(name: 'Richmondtown')
Neighborhood.create(name: 'Rosebank')
Neighborhood.create(name: 'Rossville')
Neighborhood.create(name: 'Shore Acres')
Neighborhood.create(name: 'Silver Lake')
Neighborhood.create(name: 'South Beach')
Neighborhood.create(name: 'St. George')
Neighborhood.create(name: 'Stapleton')
Neighborhood.create(name: 'Sunnyside')
Neighborhood.create(name: 'Todt Hill')
Neighborhood.create(name: 'Tompkinsville')
Neighborhood.create(name: 'Tottenville')
Neighborhood.create(name: 'Travis')
Neighborhood.create(name: 'West New Brighton')
Neighborhood.create(name: 'Westerleigh')
Neighborhood.create(name: 'Willowbrook')
Neighborhood.create(name: 'Woodrow')

# interests
Interest.create(name: 'Alcohol')
Interest.create(name: 'Animals')
Interest.create(name: 'Astrology')
Interest.create(name: 'Books')
Interest.create(name: 'Cats')
Interest.create(name: 'Dogs')
Interest.create(name: 'Family')
Interest.create(name: 'Fashion')
Interest.create(name: 'Finance')
Interest.create(name: 'Food')
Interest.create(name: 'Gaming')
Interest.create(name: 'Health and Nutrition')
Interest.create(name: 'Movies')
Interest.create(name: 'Music')
Interest.create(name: 'Fitness')
Interest.create(name: 'Programming')
Interest.create(name: 'Sports')
Interest.create(name: 'Technology')
Interest.create(name: 'Travel')
Interest.create(name: 'TV')

# user_interests
UserInterest.create(user: matt, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: matt, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: matt, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: matt, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: matt, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: avi, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: avi, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: avi, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: avi, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: avi, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: kim, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: kim, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: kim, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: kim, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: kim, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: sukrit, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: sukrit, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: sukrit, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: sukrit, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: sukrit, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: michelle, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: michelle, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: michelle, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: michelle, interest: Interest.all[rand(Interest.all.length)])
UserInterest.create(user: michelle, interest: Interest.all[rand(Interest.all.length)])

# for validation testing
# i1 = UserInterest.create(user: matt, interest: Interest.all[0])
# i2 = UserInterest.create(user: matt, interest: Interest.all[0])
# byebug

# posts
# p1 = Post.create(user: matt, topic: Topic.find_by(name: 'Sports'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about sports!', date: Date.new(2019, 10, 31), time_of_day: 'Evening')
# p2 = Post.create(user: avi, topic: Topic.find_by(name: 'Gaming'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about gaming!', date: Date.new(2019, 11, 1), time_of_day: 'Early afternoon')
# p3 = Post.create(user: kim, topic: Topic.find_by(name: 'Food'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about food!', date: Date.new(2019, 10, 31), time_of_day: 'Late afternoon')
# p4 = Post.create(user: matt, topic: Topic.find_by(name: 'Finance'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about finance!', date: Date.new(2019, 11, 4), time_of_day: 'Morning')
# p5 = Post.create(user: matt, topic: Topic.find_by(name: 'Money'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about money!', date: Date.new(2019, 11, 3), time_of_day: 'Night')
# p6 = Post.create(user: kim, topic: Topic.find_by(name: 'Parenthood'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about parenthood!', date: Date.new(2019, 11, 3), time_of_day: 'Lunchtime')
# p7 = Post.create(user: avi, topic: Topic.find_by(name: 'Relationships'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about relationships!', date: Date.new(2019, 11, 4), time_of_day: 'Morning')
# p8 = Post.create(user: kim, topic: Topic.find_by(name: 'Music'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about music!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p9 = Post.create(user: avi, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p10 = Post.create(user: michelle, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p11 = Post.create(user: sukrit, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p12 = Post.create(user: kim, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p13 = Post.create(user: avi, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p14 = Post.create(user: michelle, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')
# p15 = Post.create(user: sukrit, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something!', date: Date.new(2019, 11, 4), time_of_day: 'Late afternoon')

p1 = Post.create(user: matt, topic: Topic.find_by(name: 'Sports'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: "Where are the Giants fans at? Let's grab a drink and watch the game!", date: Date.today, time_of_day: 'Evening')
p2 = Post.create(user: matt, topic: Topic.find_by(name: 'Programming'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: "JavaScript amirite?!?!?! Let's get coffee and talk about it", date: Date.tomorrow, time_of_day: 'Lunchtime')
p3 = Post.create(user: matt, topic: Topic.find_by(name: 'Music'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'I have 2 extra tickets to The Weeknd tonight. $20. Anyone want to come?', date: Date.today, time_of_day: 'Night')
p4 = Post.create(user: matt, topic: Topic.find_by(name: 'Dogs'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'Me and my little floofball are looking for some dog walking friends!', date: Date.today, time_of_day: 'Morning')
p5 = Post.create(user: matt, topic: Topic.find_by(name: 'Food'), neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: "Picnic at the park!!! Who's in? I have wine and blankets!", date: Date.tomorrow, time_of_day: 'Early Afternoon')
# p2 = Post.create(user: avi, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post about something cool!', date: Date.yesterday, time_of_day: 'Morning')
# p3 = Post.create(user: kim, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'hi! i am a post from yesterday!', date: Date.tomorrow, time_of_day: 'Early Afternoon')
# p4 = Post.create(user: michelle, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is another post', date: Date.today, time_of_day: 'Late Afternoon')
# p5 = Post.create(user: sukrit, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'another post from the past', date: Date.yesterday, time_of_day: 'Lunchtime')
# p6 = Post.create(user: matt, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is matts old post', date: Date.yesterday, time_of_day: 'Nighttime')
# p6 = Post.create(user: michelle, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post for testing cnjsaobvnr', date: Date.yesterday, time_of_day: 'Afternoon')
# p6 = Post.create(user: sukrit, topic: Topic.all[rand(Topic.all.length)], neighborhood: Neighborhood.all[rand(Neighborhood.all.length)], description: 'this is a post for testing wejrbf jocbqfob', date: Date.yesterday, time_of_day: 'Late Morning')

# testing post validations
# t1 = Post.create()
# t2 = Post.create(description: 'fjdnakfalbfkabvjkabvjkebavjkreq;bjnvke;bgjkrvejnbkqvbjakkvakjkbjvdaskjvbajdksbvk;abeviwbupvueirwpvhbuiepwhvbuiwhbvuipwebhuveprwvbpwvbhurgviruevhiuerpieguk;abvjkabfajkbvkjadsbvkadjsbvkjadsbkajbvdk;sabvakjbvajkbvkadbvjka;bfjkbvkad;bvjklabvjkabvnjkavbnjkavi;', time_of_day: 'dnfjkvbnjeilgberjilaghuiwbgrueilqguebgfiuqlberguilqburgiqlbgriulbgrlaiugbrilqugbrilaurailubgrailgheiru')
# byebug

# post_interests
PostInterest.create(user: michelle, post: p1)
PostInterest.create(user: sukrit, post: p1)
PostInterest.create(user: kim, post: p1)
PostInterest.create(user: avi, post: p1)
# PostInterest.create(user: matt, post: p2)
PostInterest.create(user: sukrit, post: p2)
PostInterest.create(user: michelle, post: p2)
PostInterest.create(user: avi, post: p3)
# PostInterest.create(user: matt, post: p3)
PostInterest.create(user: michelle, post: p4)
PostInterest.create(user: avi, post: p5)
PostInterest.create(user: kim, post: p5)
# PostInterest.create(user: michelle, post: p5)
# PostInterest.create(user: sukrit, post: p6)
# PostInterest.create(user: avi, post: p6)
# PostInterest.create(user: matt, post: p7)
# PostInterest.create(user: kim, post: p7)
# PostInterest.create(user: michelle, post: p7)
# PostInterest.create(user: sukrit, post: p7)
# PostInterest.create(user: matt, post: p8)

# events
# e1 = Event.create(post: p1, user: matt, description: "How 'bout them Giants? Let's talk about 'em over a couple cold ones.", location: "McFadden's on 43rd and 2nd", date: Date.today, time_hour: 9, time_minute: 30, time_am_pm: 'pm')
# e2 = Event.create(post: p3, user: kim, description: "Let's get a snack and talk about what meals are good for which moods.", location: "This cafe at this location", date: Date.today, time_hour: 5, time_minute: 0, time_am_pm: 'pm')
# e3 = Event.create(post: p4, user: matt, description: 'hey i am an event description', location: 'somewhere', date: Date.new(2019, 11, 4), time_hour: 6, time_minute: 20, time_am_pm: 'pm')
# e4 = Event.create(post: p5, user: matt, description: 'lets go talk about some cool stuff', location: 'i have no idea', date: Date.new(2019, 11, 3), time_hour: 1, time_minute: 0, time_am_pm: 'pm')
# e5 = Event.create(post: p7, user: avi, description: 'i want to talk about something with somebody!!!', location: 'walk in the park', date: Date.new(2019, 11, 4), time_hour: 11, time_minute: 45, time_am_pm: 'am')
# e6 = Event.create(post: p8, user: kim, description: 'hi', location: 'some really cool place', date: Date.new(2019, 11, 4), time_hour: 10, time_minute: 0, time_am_pm: 'am')

# event_attendees
# EventAttendee.create(user: kim, event: e1)
# EventAttendee.create(user: sukrit, event: e1)
# EventAttendee.create(user: matt, event: e2)
# EventAttendee.create(user: michelle, event: e2)
# EventAttendee.create(user: avi, event: e2)
# EventAttendee.create(user: sukrit, event: e2)
# EventAttendee.create(user: matt, event: e3)
# EventAttendee.create(user: matt, event: e5)
# EventAttendee.create(user: michelle, event: e5)
# EventAttendee.create(user: avi, event: e6)
