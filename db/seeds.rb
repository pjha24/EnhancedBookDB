# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Paritosh Jha", email: "pj@gmail.com", password: "foobar", password_confirmation: "foobar")
User.create(name: "PJ 2", email: "pj1@gmail.com", password: "foobar", password_confirmation: "foobar")

Author.create(name: "J.K. Rowling", bio: "Joanne Rowling CH, OBE, HonFRSE, FRCPE, FRSL, better known by her pen name J. K. Rowling, is a British author, screenwriter, producer, and philanthropist")
Author.create(name: "Stephen King", bio:"Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. His books have sold more than 350 million copies, and many have been adapted into films, television series, miniseries, and comic books." )
Author.create(name: "William Shakespeare",bio: "William Shakespeare was an English playwright, poet, and actor, widely regarded as the greatest writer in the English language and the world's greatest dramatist. He is often called England's national poet and the 'Bard of Avon'." )
Author.create(name: "George Orwell",bio: "Eric Arthur Blair, known by his pen name George Orwell, was an English novelist, essayist, journalist and critic. His work is characterised by lucid prose, biting social criticism, opposition to totalitarianism, and outspoken support of democratic socialism." )
Author.create(name: "Jane Austen",bio: "Jane Austen was an English novelist known primarily for her six major novels, which interpret, critique and comment upon the British landed gentry at the end of the 18th century. Austen's plots often explore the dependence of women on marriage in the pursuit of favourable social standing and economic security." )
Author.create(name: "Aldous Huxley",bio: "Aldous Leonard Huxley was an English writer and philosopher. He wrote nearly fifty books—both novels and non-fiction works—as well as wide-ranging essays, narratives, and poems. Born into the prominent Huxley family, he graduated from Balliol College, Oxford with an undergraduate degree in English literature." )

Book.create(name: "Harry Potter", genre: "Fiction", author_id: 1)
Book.create(name: "IT", genre: "horror", author_id: 2)
Book.create(name: "Hamlet", genre: "tragedy", author_id: 3)
Book.create(name: "Macbeth", genre: "tragedy", author_id: 3)
Book.create(name: "1984", genre: "distopian fiction", author_id: 4)
Book.create(name: "Pride and Prejudice", genre: "romance", author_id: 5)