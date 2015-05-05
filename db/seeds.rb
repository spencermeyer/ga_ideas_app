#TESTING VALIDATIONS FOR IDEA MODEL

#VALIDATING PRESENCE
idea1 = Idea.create!(user_id: 1, title: "first", genre: "web", brief: "lalala")
#PRESENCE VALIDATION TESTED SUCCESSFULLY

#VALIDATING FORMAT
idea2 = Idea.create!(user_id: 1, title: "second", genre: "games", brief: "hihihi")
#FORMAT VALIDATION TESTED SUCCESSFULLY

#VALIDATING BRIEF LENGTH
idea3 = Idea.create!(user_id: 1, title: "third", genre: "mobile", brief: "hello")
#BRIEF LENGTH VALIDATION TESTED SUCCESSFULLY

#TESTING VALIDATIONS FOR COMMENT MODEL
#VALIDATING LENGTH OF TITLE
comment1 = Comment.create!(title: "fhfhfhffh") 
#TITLE LENGTH FOR COMMENT VALIDATION TESTED SUCCESSFULLY

user1 = User.create!(email: "dani@dani.com", password: "password", first_name: "dani", last_name: "zraykat", dob: "25/01/1989", role: "user", gender: "m", nationality: "russian", location: "london")
medium1 = Medium.create!(idea_id:1, title: "first_media", content: "content of the fisrt media", media_type: "video")
identity = Identity.create!(user_id:1, provider: "facebook", uid: "danizraikat")
comment2 = Comment.create!(user_id:1, title: "aaaaaaaa") 