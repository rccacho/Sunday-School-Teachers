# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Activity.delete_all
Message.delete_all
User.delete_all

foo = User.create({
	first_name: "Foo",
	last_name: "Bar",
	email: "f@b.com",
	password: "123456",
	birthday: "10/10/1910",
	grade: "1B",
	phone: "123-456-7890"
})
bar = User.create({
	first_name: "Bar",
	last_name: "Baz",
	email: "b@b.com",
	password: "123456",
	birthday: "10/10/1910",
	grade: "1B",
	phone: "123-456-7890"
})
baz = User.create({
	first_name: "Baz",
	last_name: "Potato",
	email: "b@p.com",
	password: "123456",
	birthday: "10/10/1910",
	grade: "1B",
	phone: "123-456-7890"
})
potato = User.create({
	first_name: "Potato",
	last_name: "Foo",
	email: "p@f.com",
	password: "123456",
	birthday: "10/10/1910",
	grade: "1B",
	phone: "123-456-7890"
})

m1 = Message.create({
	series: "Metamorphosis",
	title: "Week 1",
	content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "antennae",
	props: "none",
	featured: "no",
	user_id: foo.id
})
m2 = Message.create({
	series: "Voyage of the Barnacled Bandits",
	title: "Week 1",
	content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "bandanas, boots, captain's coat",
	props: "sword, map",
	featured: "no",
	user_id: bar.id
})
m3 = Message.create({
	series: "Joe the Dreamer",
	title: "Week 1",
	content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "cape",
	props: "basket, bread",
	featured: "yes",
	user_id: baz.id
})
m4 = Message.create({
	series: "Thanksgiving",
	title: "Week 1",
	content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "none",
	props: "none",
	featured: "no",
	user_id: potato.id
})
m5 = Message.create({
	series: "Metamorphosis",
	title: "Week 2",
	content: "2Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "antennae",
	props: "none",
	featured: "no",
	user_id: bar.id
})
m6 = Message.create({
	series: "Metamorphosis",
	title: "Week 3",
	content: "3Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "antennae",
	props: "none",
	featured: "no",
	user_id: foo.id
})
m7 = Message.create({
	series: "Voyage of the Barnacled Bandits",
	title: "Week 2",
	content: "2!Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "bandanas, boots, captain's coat",
	props: "sword, map",
	featured: "no",
	user_id: bar.id
})
m8 = Message.create({
	series: "Voyage of the Barnacled Bandits",
	title: "Week 3",
	content: "3!Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "bandanas, boots, captain's coat",
	props: "sword, map",
	featured: "no",
	user_id: baz.id
})
m9 = Message.create({
	series: "Joe the Dreamer",
	title: "Week 2",
	content: "2?Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	costumes: "cape",
	props: "basket, bread",
	featured: "yes",
	user_id: potato.id
})

a1 = Activity.create ({
	key_verse: "Phil 1:6",
	review: "Lorem ipsum dolor sit amet",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	materials: "crayons, paper, scissors",
	media_ref: "none",
	message_id: m1.id,
	user_id: potato.id
})
a2 = Activity.create ({
	key_verse: "Phil 1:6",
	review: "Lorem ipsum dolor sit amet",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	materials: "markers, paper, scissors, glue",
	media_ref: "none",
	message_id: m2.id,
	user_id: foo.id
})
a3 = Activity.create ({
	key_verse: "John 3:16",
	review: "Lorem ipsum dolor sit amet",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	materials: "colored paper, scissors, popsicle sticks",
	media_ref: "none",
	message_id: m3.id,
	user_id: bar.id
})
a4 = Activity.create ({
	key_verse: "John 3:16",
	review: "Lorem ipsum dolor sit amet",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	materials: "pencils, paper, scissors, googly eyes",
	media_ref: "none",
	message_id: m4.id,
	user_id: baz.id
})
a5 = Activity.create ({
	key_verse: "Phil 1:6",
	review: "Lorem ipsum dolor sit amet",
	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
	materials: "crayons, paper, scissors",
	media_ref: "none",
	message_id: m1.id,
	user_id: foo.id
})