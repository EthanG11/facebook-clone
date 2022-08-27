# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([{email: "test@example.com", password: "password", password_confirmation: "password"},
    {email: "test1@example.com", password: "password", password_confirmation: "password"},
    {email: "test2@example.com", password: "password", password_confirmation: "password"},
    {email: "test3@example.com", password: "password", password_confirmation: "password"},
    {email: "test4@example.com", password: "password", password_confirmation: "password"},
    {email: "test5@example.com", password: "password", password_confirmation: "password"},
    {email: "test6@example.com", password: "password", password_confirmation: "password"},
    {email: "test7@example.com", password: "password", password_confirmation: "password"},
    {email: "test8@example.com", password: "password", password_confirmation: "password"}])

invitation = Invitation.create([{sender_id:2, receiver_id:1},
    {sender_id:5,receiver_id:2}])

