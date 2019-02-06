# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MultipleChoiceQuestion.create!(question: 'What method do we use to create a model record?', answer: 'create', distractor_1: 'update', distractor_2: 'delete', distractor_3: 'all', distractor_4: 'find')

MultipleChoiceQuestion.create!(question: 'What does the C in MVC stand for?', answer: 'Controller', distractor_1: 'Const', distractor_2: 'Code', distractor_3: 'Create', distractor_4: 'Comm')

MultipleChoiceQuestion.create!(question: 'What method do we use to delete a model record?', answer: 'delete', distractor_1: 'update', distractor_2: 'create', distractor_3: 'all', distractor_4: 'find')