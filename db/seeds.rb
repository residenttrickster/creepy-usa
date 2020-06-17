# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "creepylover", bio: "Sometimes, the things you see in the shadows are more than just shadows.")

l1 = Location.create(state: 'Alabama')
l2 = Location.create(state: 'Alaska')
l3 = Location.create(state: 'Arkansas')
l4 = Location.create(state: 'Arizona')
l5 = Location.create(state: 'California')
l6 = Location.create(state: 'Colorado')
l6 = Location.create(state: 'Connecticut')
l7 = Location.create(state: 'District of Columbia')
l8 = Location.create(state: 'Delaware')
l9 = Location.create(state: 'Florida')
l10 = Location.create(state: 'Georgia')
l11 = Location.create(state: 'Hawaii')
l12 = Location.create(state: 'Iowa')
l13 = Location.create(state: 'Idaho')
l14 = Location.create(state: 'Illinois')
l15 = Location.create(state: 'Indiana')
l16 = Location.create(state: 'Kansas')
l17 = Location.create(state: 'Kentucky')
l18 = Location.create(state: 'Louisiana')
l19 = Location.create(state: 'Massachusetts')
l20 = Location.create(state: 'Maryland')
l21 = Location.create(state: 'Maine')
l22 = Location.create(state: 'Michigan')
l23 = Location.create(state: 'Minnesota')
l24 = Location.create(state: 'Missouri')
l25 = Location.create(state: 'Mississippi')
l26 = Location.create(state: 'North Carolina')
l27 = Location.create(state: 'North Dakota')
l28 = Location.create(state: 'Nebraska')
l29 = Location.create(state: 'New Hampshire')
l30 = Location.create(state: 'New Jersey')
l31 = Location.create(state: 'New Mexico')
l32 = Location.create(state: 'Nevada')
l33 = Location.create(state: 'New York')
l34 = Location.create(state: 'Ohio')
l35 = Location.create(state: 'Oklahoma')
l36 = Location.create(state: 'Oregon')
l37 = Location.create(state: 'Pennsylvania')
l38 = Location.create(state: 'Puerto Rico')
l39 = Location.create(state: 'Rhode Island')
l40 = Location.create(state: 'South Carolina')
l41 = Location.create(state: 'South Dakota')
l42 = Location.create(state: 'Tennessee')
l43 = Location.create(state: 'Texas')
l44 = Location.create(state: 'Utah')
l45 = Location.create(state: 'Virginia')
l46 = Location.create(state: 'Vermont')
l47 = Location.create(state: 'Washington')
l48 = Location.create(state: 'Wisconsin')
l49 = Location.create(state: 'West Virginia')
l50 = Location.create(state: 'Wyoming')

s1 = Story.create(title: "The ghosts of Slaughterhouse Canyon",
body: "The story of Slaughterhouse Canyon takes place during the Gold Rush. During the 1800s, there was a family who lived down in the canyon. They were very poor, so the father would venture out into the canyon for food for his family. As you might have guessed, one day the father did not return, so his family slowly starved and descended into madness. The mother, unable to bear listening to her children's cries anymore, put on her wedding dress, murdered her children, and then threw them into a nearby river. The next day she succumbed to starvation herself.
The legend states that if you go down to Slaughterhouse Canyon at night, even now, you will hear the loud, anguished cries of the mother who lost her mind.",
user_id:1, location_id:4)

g1 = Genre.create(name: "Ghost story")
g2 = Genre.create(name: "Vampire story")
g3 = Genre.create(name: "Monster story")
g4 = Genre.create(name: "Sci-fi")
g5 = Genre.create(name: "General paranormal")
g6 = Genre.create(name: "True crime")
g7 = Genre.create(name: "Cursed place")
g8 = Genre.create(name: "Occultism")



c1 = Caution.create(name: "Choose Not To Use Warnings")
c2 = Caution.create(name: "No Warnings Apply")  
c3 = Caution.create(name: "Graphic Depictions Of Violence") 
c4 = Caution.create(name: "Rape")   
c5 = Caution.create(name: "Explicit content") 

sg1 = StoryGenre.create(story_id:1, genre_id:1)

sc1 = StoryCaution.create(story_id:1, caution_id:1)
