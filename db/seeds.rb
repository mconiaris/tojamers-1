# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
<<<<<<< HEAD
Story.destroy_all
# Pitch.destroy_all

pj = User.create(first_name: "PJ", last_name: "Hughes", email: "pj@ga.co", phone: "(855) 288-0881", user_type: "company", password: "thisisfake")
phil = User.create(first_name: "Phil", last_name: "Lamplaugh", email: "philco@ga.co", phone: "(855) 288-0881", user_type: "individual", password: "bullshitpassword")
travis = User.create(first_name: "Travis", last_name: "Vander Hoop", email: "trav@ga.co", phone: "(855) 288-0881", user_type: "individual", password: "notrealatall")

pj_story = Story.create(user: pj, url: "https://generalassemb.ly/", description: "GA is building a Website for people who are in a bad place in their life." )
phil_story = Story.create(user: phil, url: "https://www.linkedin.com/pub/phillip-lamplugh/3/7ab/986", description: "I am a Brooding Visionaire." )
travis_story = Story.create(user: travis, url: "https://twitter.com/YourFriendTrav", description: "Instructor at GA." )

# # Commented out until Pitch model and controller is created.
# pj_pitch = Pitch.create(story: pj_story, pitch: "I'm looking for a Ruby on Rails Wizard")
# phil_pitch = Pitch.create(story: phil_pitch, pitch: "I am a Ruby on Rails Wizard.")
# travis_pitch = Pitch.create(story: travis_pitch, pitch: "I like the Bachelorette.")
