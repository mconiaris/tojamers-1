# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Story.destroy_all
Pitch.destroy_all

pj = User.create(first_name: "PJ", last_name: "Hughes", email: "pj@ga.co", phone: "(855) 288-0881", user_type: "company")
phil = User.create(first_name: "Phil", last_name: "Lamplaugh", email: "philco@ga.co", phone: "(855) 288-0881", user_type: "individual")
travis = User.create(first_name: "Travis", last_name: "Vander Hoop", email: "trav@ga.co", phone: "(855) 288-0881", role: "individual")

pj_story = Story.create(user: pj, url: "https://generalassemb.ly/", description: "GA is building a Website for people who are in a bad place in their life." )
phil_story = Story.create(user: phil, url: "https://www.linkedin.com/pub/phillip-lamplugh/3/7ab/986", description: "I am a Brooding Visionaire." )
travis_story = Story.create(user: travis, url: "https://www.linkedin.com/profile/view?id=72819488&authType=NAME_SEARCH&authToken=TqAg&locale=en_US&srchid=342349591412285656282&srchindex=1&srchtotal=1&trk=vsrp_people_res_name&trkInfo=VSRPsearchId%3A342349591412285656282%2CVSRPtargetId%3A72819488%2CVSRPcmpt%3Aprimary", description: "Instructor at GA." )

pj_pitch = Pitch.create(story: pj_story, pitch: "I'm looking for a Ruby on Rails Wizard")
phil_pitch = Pitch.create(story: phil_pitch, pitch: "I am a Ruby on Rails Wizard.")
travis_pitch = Pitch.create(story: travis_pitch, pitch: "I like the Bachelorette.")

<<<<<<< HEAD
=======
ryan    = User.create(name: "Ryan Parks", email: "rnparks@gmail.com", company: false, phone: "9177502397", password: "intheory")
fritz  = User.create(name: "Andrew Fritz", email: "a_fritz@yahoo.com", company: false, phone: "6467509999", password: "sweetroutes")
toro    = User.create(name: "Toro Rojo", email: "toro@nasa.gov", company: true, phone: "1-800-575-3535", password: "redbulls")
obama  = User.create(name: "Obama", email: "obama@gmail.com", company: true, phone: "1-900-ilv-taxes", password: "fourmoreyears")
chuck  = User.create(name: "Chuck Berry", email: "chuck_berry@rocknroll.com", company: false, phone: "650-323-2121", password: "johnnybgood")
keith  = User.create(name: "Keith Sparky Ricards", email: "keith_richards@rocknroll.com", company: false, phone: "212-333-1212", password: "brownsugar")
moon    = User.create(name: "Keith Sailor Moon", email: "keith_moon@underworld.com", company: true, phone: "666-666-6666", password: "whereisthebeer")
prince  = User.create(name: "Prince", email: "prince@strange.com", company: true, phone: "917-995-6565", password: "littleredcorvette")
>>>>>>> e877cf18fb3749284b7a4f164df2d075a5d58e40
