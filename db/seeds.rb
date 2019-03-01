# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email: 'user1@email.com', password: 'dddddd')
quiz_1 = user_1.quizzes.build(title: 'Rails MVC', description: 'Rails MVC blah blah blah.')
quiz_1.questions.build(question: 'What method do we use to create a model record?', answer: 'create', distractor_1: 'update', distractor_2: 'delete', distractor_3: 'all', distractor_4: 'find')
quiz_1.questions.build(question: 'What does the C in MVC stand for?', answer: 'Controller', distractor_1: 'Const', distractor_2: 'Code', distractor_3: 'Create', distractor_4: 'Comm')
quiz_1.questions.build(question: 'What method do we use to delete a model record?', answer: 'delete', distractor_1: 'update', distractor_2: 'create', distractor_3: 'all', distractor_4: 'find')
quiz_2 = user_1.quizzes.build(title: 'Git', description: 'Git blah blah blah')
quiz_2.questions.build(question: 'T or F? The pull command uploads changes to the remote repo.', answer: 'F', distractor_1: 'T')
quiz_2.questions.build(question: 'T or F? The push command uploads changes to the remote repo.', answer: 'T', distractor_1: 'F')
quiz_2.questions.build(question: 'T or F? The add command commits changes to the local repo.', answer: 'F', distractor_1: 'T')
user_1.save!

user_2 = User.new(email: 'user2@email.com', password: 'dddddd')
quiz_3 = user_2.quizzes.build(title: 'UML Class Diagrams', description: 'UML blah blah blah')
quiz_3.questions.build(question: 'T or F? The * multiplicity means 1 or more.', answer: 'F', distractor_1: 'T')
quiz_3.questions.build(question: 'T or F? Associations are demoted with boxes in class diagrams.', answer: 'F', distractor_1: 'T')
quiz_3.questions.build(question: 'T or F? the 1 multiplicity means exactly 1.', answer: 'T', distractor_1: 'F')
user_2.save!



