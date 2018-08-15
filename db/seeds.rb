User.create(name: "The Doctor")
Book.create(title: "Tardis Manual")
#
# the_doctor.check_out_book(book, due_date: "September 1st, 2016")
#
# the_doctor.books
# # => [#<Book:0x007f8973912 @title="Tardis Manual">]
#
# book.users
# # => [#<User:8x007f867390fe38 @name="The Doctor">]
#
# the_doctor.return_book(book)
# the_doctor.books
# # => [#<Book:0x007f8973912 @title="Tardis Manual">]
#
# UserBook.where(user: the_doctor, returned: false)
# # => []
#
# UserBook.where(user: the_doctor, returned: true)
# # # => [#<User:0x007f867390fe38
# #         @user=#<User:0x007290867390fe38 @name="The Doctor">,
# #         @book=#<Book:7x007f8673999 @title="Tardis Manual">,
# #         @returned=false>
# #       ]
