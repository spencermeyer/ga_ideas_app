Idea.destroy_all
Comment.destroy_all
Medium.destroy_all
Identity.destroy_all
User.destroy_all

#TESTING VALIDATIONS FOR IDEA MODEL

#VALIDATING PRESENCE
#idea1 = Idea.create!(user_id: 1, title: "first", genre: "web", brief: "lalala")
#PRESENCE VALIDATION TESTED SUCCESSFULLY

#VALIDATING FORMAT
#idea2 = Idea.create!(user_id: 1, title: "second", genre: "games", brief: "hihihi")
#FORMAT VALIDATION TESTED SUCCESSFULLY

#VALIDATING BRIEF LENGTH
#idea3 = Idea.create!(user_id: 1, title: "third", genre: "mobile", brief: "hello")
#BRIEF LENGTH VALIDATION TESTED SUCCESSFULLY

#TESTING VALIDATIONS FOR COMMENT MODEL
#VALIDATING LENGTH OF TITLE
comment1 = Comment.create!(title: "fhfhfhffh") 
#TITLE LENGTH FOR COMMENT VALIDATION TESTED SUCCESSFULLY


#user1 = User.create!(email: "c@c.com", password: "password", first_name: "Thomas", last_name: "Edison", dob: "25/01/1847", role: "user", gender: "m", nationality: "American", location: "Ohio", image: Rails.root.join("app/assets/images/edison.jpg").open)

user1 = User.create!(email: "a@a.com", password: "password", first_name: "Filippo", last_name: "Matoso", dob: "07/05/2001", role: "admin", gender: "m", nationality: "Portugese", location: "Portugal", image: Rails.root.join("app/assets/images/Filippo.jpg").open)
user2 = User.create!(email: "b@b.com", password: "password", first_name: "Cheryl", last_name: "W", dob: "07/05/1847", role: "user", gender: "m", nationality: "American", location: "Ohio", image: Rails.root.join("app/assets/images/cheryl.jpg").open)
user3 = User.create!(email: "c@c.com", password: "password", first_name: "Albert", last_name: "Einstein", dob: "25/01/1889", role: "user", gender: "m", nationality: "German", location: "Berlin", image: Rails.root.join("app/assets/images/einstein.jpeg").open)
user4 = User.create!(email: "d@d.com", password: "password", first_name: "Nikola", last_name: "Tesla", dob: "25/01/1856", role: "user", gender: "m", nationality: "American", location: "NewYork", image: Rails.root.join("app/assets/images/Tesla.jpeg").open)

#idea1 = Idea.create!(user_id: user1.id, title: "New FlyingSaucer", genre: "FlyingMachines", brief: "A new type of flying Saucer", description: "A really cool flying saucer idea that no one has thought of before")
#idea2 = Idea.create!(user_id: user2.id, title: "Butterstick", genre: "Food", brief: "A really convenient way of buttering your bread", description: "A really convenient way to source butter and spread it on you bread, no more need for those messy packets.")
#idea3 = Idea.create!(user_id: user3.id, title: "ToiletGolf", genre: "Gadgets", brief: "Keep yourself amused playing golf when on the toilet", description: "Something to keep yourself amused whilst on the toilet")
#idea4 = Idea.create!(user_id: user3.id, title: "Banana Battery", genre: "Gadgets", brief: "Get Electricity from Bananas and a snack", description: "Electricity from Bananas and also a Snack")
#idea5 = Idea.create!(user_id: user3.id, title: "Cushion with Arm Hole", genre: "Gadgets", brief: "Sleep on your arm", description: "Sleep comfortably on your arm")

#medium1 = Medium.create!(idea_id: idea1.id, title: "flyingsaucer", content: Rails.root.join("app/assets/images/flyingsaucer.jpg").open, media_type: "image")
#medium2 = Medium.create!(idea_id: idea2.id, title: "ButterStick", content: Rails.root.join("app/assets/images/butterstick.jpg").open, media_type: "image")
#medium3 = Medium.create!(idea_id: idea3.id, title: "flyingsaucer", content: Rails.root.join("app/assets/images/toiletgolf.jpeg").open, media_type: "image")


identity = Identity.create!(user_id: user1.id, provider: "facebook", uid: "danizraikat")
comment2 = Comment.create!(user_id: user1.id, title: "aaaaaaaa") 


