# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BookListItem.destroy_all
Review.destroy_all
Author.destroy_all


proust = Author.create(first_name: "Marcel", last_name: "Proust")
cervantes = Author.create(first_name: "Miguel", last_name: "de Cervantes")
joyce = Author.create(first_name: "James", last_name: "Joyce")
fitzgerald = Author.create(first_name: "F. Scott", last_name: "Fitzgerald")
melville = Author.create(first_name: "Herman", last_name: "Melville")
tolstoy = Author.create(first_name: "Leo", last_name: "Tolstoy")
homer = Author.create(first_name: "", last_name: "Homer")

proust.books.create(title: "In Search of Lost Time")
cervantes.books.create(title: "Don Quixote")
joyce.books.create(title: "Ulysses")
fitzgerald.books.create(title: "The Great Gatsby")
melville.books.create(title: "Moby Dick")
tolstoy.books.create(title: "Hamlet")
homer.books.create(title: "The Odyssey")

heinlein = Author.create(first_name: "Robert", last_name: "Heinlein")
heinlein.books.create(title: "Stranger in a Strange Land", genre: "science fiction")
heinlein.books.create(title: "Friday", genre: "science fiction")
heinlein.books.create(title: "The Moon is a Harsh Mistress", genre: "science fiction")

gaiman = Author.create(first_name: "Neil", last_name: "Gaiman")
gaiman.books.create(title: "American Gods", genre: "fantasy")
gaiman.books.create(title: "Anansi Boys", genre: "fantasy")
gaiman.books.create(title: "Neverworld", genre: "fantasy")


Follow.destroy_all
User.destroy_all
jane = User.create(email: "jane@doe.com", username: "jane", password: "abc123")
jethro = User.create(email: "jethro@tull.com", username: "flute_wizard", password: "abc123")
bobby = User.create(email: "bobby@mcgee.com", username: "bobby_blues", password: "abc123")
tom = User.create(email: "tom@jerry.com", username: "kitty", password: "abc123")

