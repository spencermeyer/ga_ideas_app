
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